/* ----------------------------------------------------------------------------
 * Easy!Appointments - Open Source Web Scheduler
 *
 * @package     EasyAppointments
 * @author      A.Tselegidis <alextselegidis@gmail.com>
 * @copyright   Copyright (c) 2013 - 2017, Alex Tselegidis
 * @license     http://opensource.org/licenses/GPL-3.0 - GPLv3
 * @link        http://easyappointments.org
 * @since       v1.0.0
 * ---------------------------------------------------------------------------- */

(function() {

    'use strict';

    /**
     * ServicesHelper
     *
     * This class contains the methods that will be used by the "Factura" tab of the page.
     *
     * @class ServicesHelper
     */
    function InvoicesHelper() {
        this.filterResults = {};
    }

    InvoicesHelper.prototype.bindEventHandlers = function() {
        var instance = this;

        /**
         * Event: Filter Facturas Form "Submit"
         *
         * @param {jQuery.Event} event
         */
        $('#filter-invoice form').submit(function(event) {
            var key = $('#filter-invoices .key').val();
            $('#filter-items .selected').removeClass('selected');
            instance.resetForm();
            instance.filter(key);
            return false;
        });

        /**
         * Event: Filter Service Cancel Button "Click"
         */
        $('#filter-items .clear').click(function() {
            $('#filter-items .key').val('');
            instance.filter('');
            instance.resetForm();
        });

        /**
         * Event: Filter Service Row "Click"
         *
         * Display the selected service data to the user.
         */
        $(document).on('click', '.items-row', function() {
            if ($('#filter-items .filter').prop('disabled')) {
                $('#filter-items .results').css('color', '#AAA');
                return; // exit because we are on edit mode
            }

            var itemId = $(this).attr('data-id');
            var item = {};
            $.each(instance.filterResults, function(index, item) {
                if (item.id === itemId) {
                    service = item;
                    return false;
                }
            });

            // Add dedicated provider link.
            var dedicatedUrl = GlobalVariables.baseUrl + '/index.php?invoice=' + encodeURIComponent(invoice.id);
            var linkHtml = '<a href="' + dedicatedUrl + '"><span class="glyphicon glyphicon-link"></span></a>';
            $('#items .record-details h3')
                    .find('a')
                    .remove()
                    .end()
                    .append(linkHtml);

            instance.display(invoice);
            $('#filter-items .selected').removeClass('selected');
            $(this).addClass('selected');
            $('#edit-item, #delete-item').prop('disabled', false);
        });

        /**
         * Event: Add New Item Button "Click"
         */
        $('#add-item').click(function() {
            instance.resetForm();
            $('#item .add-edit-delete-group').hide();
            $('#item .save-cancel-group').show();
            $('#item .record-details').find('input, textarea').prop('readonly', false);
            $('#item .record-details').find('select').prop('disabled', false);

            $('#filter-item button').prop('disabled', true);
            $('#filter-item .results').css('color', '#AAA');
        });

        /**
         * Event: Cancel Service Button "Click"
         *
         * Cancel add or edit of a service record.
         */
        $('#cancel-item').click(function() {
            var id = $('#item-id').val();
            instance.resetForm();
            if (id !== '') {
                instance.select(id, true);
            }
        });

        /**
         * Event: Save Service Button "Click"
         */
        $('#save-invoice').click(function() {
            var service = {
                name: $('#iteitems-name').val(),
                duration: $('#iteitems-duration').val(),
                price: $('#iteitems-price').val(),
                currency: $('#iteitems-currency').val(),
                description: $('#iteitems-description').val(),
                availabilities_type: $('#iteitems-availabilities-type').val(),
                attendants_number: $('#iteitems-attendants-number').val()
            };

            if ($('#iteitems-category').val() !== 'null') {
                invoice.id_service_categories = $('#iteitems-category').val();
            } else {
                invoice.id_service_categories = null;
            }

            if ($('#iteitems-id').val() !== '') {
                invoice.id = $('#iteitems-id').val();
            }

            if (!instance.validate()) {
                return;
            }

            instance.save(invoice);
        });

        /**
         * Event: Edit Service Button "Click"
         */
        $('#edit-item').click(function() {
            $('#items .add-edit-delete-group').hide();
            $('#items .save-cancel-group').show();
            $('#items .record-details').find('input, textarea').prop('readonly', false);
            $('#items .record-details select').prop('disabled', false);

            $('#filter-items button').prop('disabled', true);
            $('#filter-items .results').css('color', '#AAA');
        });

        /**
         * Event: Delete Service Button "Click"
         */
        $('#delete-item').click(function() {
            var serviceId = $('#service-id').val();
            var buttons = [
                {
                    text: EALang.delete,
                    click: function() {
                        instance.delete(itemId);
                        $('#message_box').dialog('close');
                    }
                },
                {
                    text: EALang.cancel,
                    click: function() {
                        $('#message_box').dialog('close');
                    }
                }
            ];

            GeneralFunctions.displayMessageBox(EALang.delete_service,
                    EALang.delete_record_prompt, buttons);
        });
    };

    /**
     * Save service record to database.
     *
     * @param {Object} service Contains the service record data. If an 'id' value is provided
     * then the update operation is going to be executed.
     */
    InvoiceHelper.prototype.save = function(item) {
        var postUrl = GlobalVariables.baseUrl + '/index.php/backend_api/ajax_save_invoice';
        var postData = {
            csrfToken: GlobalVariables.csrfToken,
            invoice: JSON.stringify(service)
        };

        $.post(postUrl, postData, function(response) {
            if (!GeneralFunctions.handleAjaxExceptions(response)) {
                return;
            }

            Backend.displayNotification(EALang.service_saved);
            this.resetForm();
            $('#filter-items .key').val('');
            this.filter('', response.id, true);
        }.bind(this), 'json').fail(GeneralFunctions.ajaxFailureHandler);
    };

    /**
     * Delete a service record from database.
     *
     * @param {Number} id Record ID to be deleted.
     */
    ServicesHelper.prototype.delete = function(id) {
        var postUrl = GlobalVariables.baseUrl + '/index.php/backend_api/ajax_delete_item';
        var postData = {
            csrfToken: GlobalVariables.csrfToken,
            service_id: id
        };

        $.post(postUrl, postData, function(response) {
            if (!GeneralFunctions.handleAjaxExceptions(response)) {
                return;
            }

            Backend.displayNotification(EALang.item_deleted);

            this.resetForm();
            this.filter($('#filter-services .key').val());
        }.bind(this), 'json').fail(GeneralFunctions.ajaxFailureHandler);
    };

    /**
     * Validates a service record.
     *
     * @return {Boolean} Returns the validation result.
     */
    ServicesHelper.prototype.validate = function() {
        $('#items .has-error').removeClass('has-error');

        try {
            // validate required fields.
            var missingRequired = false;

            $('#itemsitems .required').each(function() {
                if ($(this).val() == '' || $(this).val() == undefined) {
                    $(this).closest('.form-group').addClass('has-error');
                    missingRequired = true;
                }
            });

            if (missingRequired) {
                throw EALang.fields_are_required;
            }

            return true;
        } catch (exc) {
            return false;
        }
    };

    /**
     * Resets the service tab form back to its initial state.
     */
    ServicesHelper.prototype.resetForm = function() {
        $('#items.record-details').find('input, textarea').val('');
        $('#item-category').val('null');
        $('#items .add-edit-delete-group').show();
        $('#items .save-cancel-group').hide();
        $('#edit-item, #delete-service').prop('disabled', true);
        $('#items .record-details').find('input, textarea').prop('readonly', true);
        $('#items .record-details').find('select').prop('disabled', true);

        $('#filter-items .selected').removeClass('selected');
        $('#filter-items button').prop('disabled', false);
        $('#filter-items .results').css('color', '');
    };

    /**
     * Display a service record into the service form.
     *
     * @param {Object} service Contains the service record data.
     */
    ServicesHelper.prototype.display = function(item) {
        $('#item-id').val(item.id);
        $('#item-name').val(item.name);
        $('#item-duration').val(item.duration);
        $('#item-price').val(item.price);
        $('#item-currency').val(item.currency);
        $('#item-description').val(item.description);
        $('#item-availabilities-type').val(item.availabilities_type);
        $('#item-attendants-number').val(item.attendants_number);

        var categoryId = (item.id_service_categories !== null) ? item.id_service_categories : 'null';
        $('#service-category').val(categoryId);
    };

    /**
     * Filters service records depending a string key.
     *
     * @param {String} key This is used to filter the service records of the database.
     * @param {Number} selectId Optional, if set then after the filter operation the record with this
     * ID will be selected (but not displayed).
     * @param {Boolean} display Optional (false), if true then the selected record will be displayed on the form.
     */
    ServicesHelper.prototype.filter = function(key, selectId, display) {
        display = display || false;

        var postUrl = GlobalVariables.baseUrl + '/index.php/backend_api/ajax_filter_items';
        var postData = {
            csrfToken: GlobalVariables.csrfToken,
            key: key
        };

        $.post(postUrl, postData, function(response) {
            if (!GeneralFunctions.handleAjaxExceptions(response)) {
                return;
            }

            this.filterResults = response;

            $('#filter-services .results').html('');
            $.each(response, function(index, service) {
                var html = ServicesHelper.prototype.getFilterHtml(service);
                $('#filter-items .results').append(html);
            });

            if (response.length === 0) {
                $('#filter-items .results').html('<em>' + EALang.no_records_found + '</em>');
            }

            if (selectId !== undefined) {
                this.select(selectId, display);
            }
        }.bind(this), 'json').fail(GeneralFunctions.ajaxFailureHandler);
    };

    /**
     * Get Filter HTML
     *
     * Get a service row HTML code that is going to be displayed on the filter results list.
     *
     * @param {Object} service Contains the service record data.
     *
     * @return {String} The HTML code that represents the record on the filter results list.
     */
    ServicesHelper.prototype.getFilterHtml = function(service) {
        var html =
                '<div class="item-row entry" data-id="' + item.id + '">' +
                '<strong>' + item.name + '</strong><br>' +
                item.duration + ' min - ' +
                item.price + ' ' + item.currency + '<br>' +
                '</div><hr>';

        return html;
    };

    /**
     * Select a specific record from the current filter results. If the service id does not exist
     * in the list then no record will be selected.
     *
     * @param {Number} id The record id to be selected from the filter results.
     * @param {Boolean} display Optional (false), if true then the method will display the record on the form.
     */
    ServicesHelper.prototype.select = function(id, display) {
        display = display || false;

        $('#filter-items .selected').removeClass('selected');

        $('#filter-items .item-row').each(function() {
            if ($(this).attr('data-id') == id) {
                $(this).addClass('selected');
                return false;
            }
        });

        if (display) {
            $.each(this.filterResults, function(index, service) {
                if (service.id == id) {
                    this.display(service);
                    $('#edit-item, #delete-item').prop('disabled', false);
                    return false;
                }
            }.bind(this));
        }
    };

    window.InvoicesHelper = InvoicesHelper;
})();
