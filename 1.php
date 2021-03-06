<?php
/* ----------------------------------------------------------------------------
 * Gleron Technologies - Open Source Web Scheduler
 *
 * @package     EasyAppointments
 * @author      A.Tselegidis <alextselegidis@gmail.com>
 * @copyright   Copyright (c) 2013 - 2016, Alex Tselegidis
 * @license     http://opensource.org/licenses/GPL-3.0 - GPLv3
 * @link        http://gleron.com
 * @since       v1.0.0
 * ---------------------------------------------------------------------------- */

/**
 * Gleron Technologies Configuration File
 *
 * Set your installation BASE_URL * without the trailing slash * and the database
 * credentials in order to connect to the database. You can enable the DEBUG_MODE
 * while developing the application.
 *
 * Set the default language by changing the LANGUAGE constant. For a full list of
 * available languages look at the /application/config/config.php file.
 *
 * IMPORTANT:
 * If you are updating from version 1.0 you will have to create a new "config.php"
 * file because the old "configuration.php" is not used anymore.
 */
class Config {
    // ------------------------------------------------------------------------
    // General Settings
    // ------------------------------------------------------------------------
    const BASE_URL      = 'http://localhost/citas';
    const LANGUAGE      = 'spanish';
    const DEBUG_MODE    = FALSE;

    // ------------------------------------------------------------------------
    // Database Settings
    // ------------------------------------------------------------------------
    const DB_HOST       = 'localhost';
    const DB_NAME       = 'citas';
    const DB_USERNAME   = 'root';
    const DB_PASSWORD   = '';

    // ------------------------------------------------------------------------
    // Google Calendar Sync
    // ------------------------------------------------------------------------
    const GOOGLE_SYNC_FEATURE   = TRUE; // Enter TRUE or FALSE
    const GOOGLE_PRODUCT_NAME   = '';
    const GOOGLE_CLIENT_ID      = '';
    const GOOGLE_CLIENT_SECRET  = '';
    const GOOGLE_API_KEY        = '';
}
/* End of file config.php */
/* Location: ./config.php */
