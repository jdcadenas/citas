<?php

defined('BASEPATH') OR exit('No direct script access allowed');

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

/**
 * Services Model
 * ["id"]=>
  string(2) "58"
  ["id_factura"]=>
  string(1) "1"
  ["idcitas"]=>
  string(2) "58"
  ["cantidad"]=>
  string(1) "1"
  ["precio"]=>
  string(6) "400.00"
  ["id_facturaNo"]=>
  string(9) "000000001"
  ["razon_social"]=>
  string(14) "mi empresa .ca"
  ["tipo_documento"]=>
  string(7) "factura"
  ["monto"]=>
  string(6) "400.00"
  ["fecha_emision"]=>
  string(19) "0000-00-00 00:00:00"
  ["fecha_cancelacion"]=>
  string(19) "0000-00-00 00:00:00"
  ["tipo_pago"]=>
  string(8) "efectivo"
  ["estado"]=>
  string(1) "1"
  ["book_datetime"]=>
  string(19) "2018-03-27 22:12:21"
  ["start_datetime"]=>
  string(19) "2018-03-26 08:00:00"
  ["end_datetime"]=>
  string(19) "2018-03-26 08:45:00"
  ["notes"]=>
  string(0) ""
  ["hash"]=>
  string(32) "b86eb24f0e653a6e8b644b3dc4667040"
  ["attendance_status"]=>
  string(10) "registered"
  ["is_unavailable"]=>
  string(1) "0"
  ["id_users_provider"]=>
  string(2) "12"
  ["id_users_customer"]=>
  string(1) "4"
  ["id_services"]=>
  string(2) "10"
  ["id_google_calendar"]=>
  NULL
 * @package Models
 */
class Invoices_Model extends CI_Model {

    /**
     * Add (insert - update) a service provider record.
     *
     * If the record already exists (id value provided) then it is going to be updated, otherwise inserted into the
     * database.
     *
     * @param array $provider Contains the service provider data.
     *
     * @return int Returns the record id.
     *
     * @throws Exception When the record data validation fails.
     */
    public function add($invoice) {
        $this->validate($invoice);

        if ($this->exists($invoice) && !isset($invoice['id'])) {
            $invoice['id'] = $this->find_record_id($invoicer);
        }

        if (!isset($invoice['id'])) {
            $invoice['id'] = $this->_insert($invoice);
        } else {
            $invoice['id'] = $this->_update($invoice);
        }

        return (int) $invoice['id'];
    }

    /**
     * Insert factura record into database.
     *
     * @param array $invoice Contains the service record data.
     *
     * @return int Returns the new service record id.
     *
     * @throws Exception If invoice record could not be inserted.
     */
    protected function _insert($invoice) {
        if (!$this->db->insert('facturacions', $invoice)) {
            throw new Exception('Could not insert invoice record.');
        }
        return (int) $this->db->insert_id();
    }

    /**
     * Update service record.
     *
     * @param array $service Contains the service data. The record id needs to be included in the array.
     *
     * @throws Exception If service record could not be updated.
     */
    protected function _update($invoice) {
        $this->db->where('id', $invoice['id']);
        if (!$this->db->update('facturacion', $invoice)) {
            throw new Exception('Could not update service record');
        }
    }

    /**
     * Checks whether an service record already exists in the database.
     *
     * @param array $service Contains the service data. Name, duration and price values are mandatory in order to
     * perform the checks.
     *
     * @return bool Returns whether the service record exists.
     *
     * @throws Exception If required fields are missing.
     */
    public function exists($invoice) {
        if (!isset($invoice['razon_social']) || !isset($invoice['id_facturaNo']) || !isset($invoice['monto'])) {
            throw new Exception('Not all service fields are provided in order to check whether '
            . 'a service record already exists: ' . print_r($invoice, TRUE));
        }

        $num_rows = $this->db
                        ->select('*')
                        ->from('ea_users')
                        ->join('ea_roles', 'ea_roles.id = ea_users.id_roles', 'inner')
                        ->where('facturacion.id_facturaNo', $invoice['id_facturaNo'])
                        ->where('ea_roles.slug', DB_SLUG_PROVIDER)
                        ->get()->num_rows();

        return ($num_rows > 0) ? TRUE : FALSE;
    }

    /**
     * Validate a service record data.
     *
     * @param array $service Contains the service data.
     *
     * @return bool Returns the validation result.
     *
     * @throws Exception If service validation fails.
     */
    public function validate($service) {
        $this->load->helper('data_validation');

        // If record id is provided we need to check whether the record exists
        // in the database.
        if (isset($service['id'])) {
            $num_rows = $this->db->get_where('ea_services', ['id' => $service['id']])
                    ->num_rows();
            if ($num_rows == 0) {
                throw new Exception('Provided service id does not exist in the database.');
            }
        }

        // Check if service category id is valid (only when present).
        if (!empty($service['id_service_categories'])) {
            $num_rows = $this->db->get_where('ea_service_categories', ['id' => $service['id_service_categories']])->num_rows();
            if ($num_rows == 0) {
                throw new Exception('Provided service category id does not exist in database.');
            }
        }

        // Check for required fields
        if ($service['name'] == '') {
            throw new Exception('Not all required service fields where provided: '
            . print_r($service, TRUE));
        }

        // Duration must be int
        if ($service['duration'] !== NULL) {
            if (!is_numeric($service['duration'])) {
                throw new Exception('Service duration is not numeric.');
            }
        }

        if ($service['price'] !== NULL) {
            if (!is_numeric($service['price'])) {
                throw new Exception('Service price is not numeric.');
            }
        }

        // Availabilities type must have the correct value.
        if ($service['availabilities_type'] !== NULL && $service['availabilities_type'] !== AVAILABILITIES_TYPE_FLEXIBLE && $service['availabilities_type'] !== AVAILABILITIES_TYPE_FIXED) {
            throw new Exception('Service availabilities type must be either ' . AVAILABILITIES_TYPE_FLEXIBLE
            . ' or ' . AVAILABILITIES_TYPE_FIXED . ' (given ' . $service['availabilities_type'] . ')');
        }

        if ($service['attendants_number'] !== NULL && (!is_numeric($service['attendants_number']) || $service['attendants_number'] < 1)) {
            throw new Exception('Service attendants number must be numeric and greater or equal to one: '
            . $service['attendants_number']);
        }

        return TRUE;
    }

    /**
     * Get the record id of an existing record.
     *
     * NOTICE: The record must exist, otherwise an exception will be raised.
     *
     * @param array $service Contains the service record data. Name, duration and price values are mandatory for this
     * method to complete.
     *
     * @throws Exception If required fields are missing.
     * @throws Exception If requested service was not found.
     */
    public function find_record_id($invoice) {
        if (!isset($invoice['razon_social']) || !isset($invoice['monto'])) {
            throw new Exception('Not all required fields where provided in order to find the '
            . 'service record id.');
        }

        $result = $this->db->get_where('facturacion', [
            'razon_social' => $invoice['razon_social'],
            'monto' => $invoice['monto']
        ]);

        if ($result->num_rows() == 0) {
            throw new Exception('Could not find service record id');
        }

        return $result->row()->id;
    }

    /**
     * Delete a service record from database.
     *
     * @param int $service_id Record id to be deleted.
     *
     * @return bool Returns the delete operation result.
     *
     * @throws Exception If $service_id argument is invalid.
     */
    public function delete($service_id) {
        if (!is_numeric($service_id)) {
            throw new Exception('Invalid argument type $service_id (value:"' . $service_id . '"');
        }

        $num_rows = $this->db->get_where('ea_services', ['id' => $service_id])->num_rows();
        if ($num_rows == 0) {
            return FALSE; // Record does not exist
        }

        return $this->db->delete('ea_services', ['id' => $service_id]);
    }

    /**
     * Get a specific row from the services db table.
     *
     * @param int $service_id The record's id to be returned.
     *
     * @return array Returns an associative array with the selected record's data. Each key has the same name as the
     * database field names.
     *
     * @throws Exception If $service_id argument is not valid.
     */
    public function get_row($invoice_id) {
        if (!is_numeric($invoice_id)) {
            throw new Exception('$service_id argument is not an numeric (value: "' . $invoice_id . '")');
        }
        return $this->db->get_where('facturacion', ['id' => $invoice_id])->row_array();
    }

    /**
     * Get a specific field value from the database.
     *
     * @param string $field_name The field name of the value to be
     * returned.
     * @param int $service_id The selected record's id.
     *
     * @return string Returns the records value from the database.
     *
     * @throws Exception If $service_id argument is invalid.
     * @throws Exception If $field_name argument is invalid.
     * @throws Exception if requested service does not exist in the database.
     * @throws Exception If requested field name does not exist in the database.
     */
    public function get_value($field_name, $invoice_id) {
        if (!is_numeric($invoice_id)) {
            throw new Exception('Invalid argument provided as $service_id: ' . $invoice_id);
        }

        if (!is_string($field_name)) {
            throw new Exception('$field_name argument is not a string: ' . $field_name);
        }

        if ($this->db->get_where('facturacion', ['id' => $invoice_id])->num_rows() == 0) {
            throw new Exception('The record with the $service_id argument does not exist in the database: ' . $invoice_id);
        }

        $row_data = $this->db->get_where('facturacion', ['id' => $invoice_id])->row_array();
        if (!isset($row_data[$field_name])) {
            throw new Exception('The given $field_name argument does not exist in the database: ' . $field_name);
        }

        $setting = $this->db->get_where('facturacion', ['id' => $invoice_id])->row_array();
        return $setting[$field_name];
    }

    /**
     * Get all, or specific records from service's table.
     *
     * @example $this->Model->getBatch('id = ' . $recordId);
     *
     * @param string $whereClause (OPTIONAL) The WHERE clause of
     * the query to be executed. DO NOT INCLUDE 'WHERE' KEYWORD.
     *
     * @return array Returns the rows from the database.
     */
    public function get_batch($where_clause = NULL) {
        if ($where_clause != NULL) {
            $this->db->where($where_clause);
        }

        return $this->db->get('facturacion')->result_array();
    }

    /**
     * This method returns all the services from the database.
     *
     * @return array Returns an object array with all the database services.
     * SELECT * FROM items INNER JOIN facturacion ON facturacion.id = items.id_factura
      left JOIN ea_appointments ON items.idcitas = ea_appointments.id
     */
    public function get_available_invoices() {
        $this->db->distinct();
        return $this->db
                        ->select('*')
                        ->from('items')
                        ->join('facturacion', 'facturacion.id= items.id_factura', 'inner')
                        ->join('ea_appointments', 'items.idcitas = ea_appointments.id', 'left')
                        ->get()->result_array();
    }

    /**
     * Add (insert or update) a service category record into database.
     *
     * @param array $category Contains the service category data.
     *
     * @return int Returns the record ID.
     *
     * @throws Exception If service category data are invalid.
     */
    public function add_category($category) {
        if (!$this->validate_category($category)) {
            throw new Exception('Service category data are invalid.');
        }

        if (!isset($category['id'])) {
            $this->db->insert('ea_service_categories', $category);
            $category['id'] = $this->db->insert_id();
        } else {
            $this->db->where('id', $category['id']);
            $this->db->update('ea_service_categories', $category);
        }

        return (int) $category['id'];
    }

    /**
     * Delete a service category record from the database.
     *
     * @param int $category_id Record id to be deleted.
     *
     * @return bool Returns the delete operation result.
     *
     * @throws Exception if Service category record was not found.
     */
    public function delete_category($category_id) {
        if (!is_numeric($category_id)) {
            throw new Exception('Invalid argument given for $category_id: ' . $category_id);
        }

        $num_rows = $this->db->get_where('ea_service_categories', ['id' => $category_id])
                ->num_rows();
        if ($num_rows == 0) {
            throw new Exception('Service category record not found in database.');
        }

        $this->db->where('id', $category_id);
        return $this->db->delete('ea_service_categories');
    }

    /**
     * Get a service category record data.
     *
     * @param int $category_id Record id to be retrieved.
     *
     * @return array Returns the record data from the database.
     *
     * @throws Exception If $category_id argument is invalid.
     * @throws Exception If service category record does not exist.
     */
    public function get_category($category_id) {
        if (!is_numeric($category_id)) {
            throw new Exception('Invalid argument type given $category_id: ' . $category_id);
        }

        $result = $this->db->get_where('ea_service_categories', ['id' => $category_id]);

        if ($result->num_rows() == 0) {
            throw new Exception('Service category record does not exist.');
        }

        return $result->row_array();
    }

    /**
     * Get all service category records from database.
     *
     * @return array Returns an array that contains all the service category records.
     */
    public function get_all_invoices($where = '') {
        if ($where !== '') {
            $this->db->where($where);
        }
        return $this->db->get('facturacion')->result_array();
    }

    /**
     * Validate a service category record data. This method must be used before adding
     * a service category record into database in order to secure the record integrity.
     *
     * @param array $category Contains the service category data.
     *
     * @return bool Returns the validation result.
     *
     * @throws Exception If required fields are missing.
     */
    public function validate_category($category) {
        try {
            // Required Fields
            if (!isset($category['name'])) {
                throw new Exception('Not all required fields where provided ');
            }

            if ($category['name'] == '' || $category['name'] == NULL) {
                throw new Exception('Required fields cannot be empty or null ($category: '
                . print_r($category, TRUE) . ')');
            }

            return TRUE;
        } catch (Exception $exc) {
            return FALSE;
        }
    }

}
