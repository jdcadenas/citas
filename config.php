<?php

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
 * Easy!Appointments Configuration File
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
    // GENERAL SETTINGS
    // ------------------------------------------------------------------------
    //const BASE_URL = 'http://centrocian.byethost.com'; // original
    const BASE_URL = 'http://192.168.2.10/citas';
    //
    //const BASE_URL = 'https://centrocian.000webhostapp.com';
    const LANGUAGE = 'spanish';
    const DEBUG_MODE = false;
    // ------------------------------------------------------------------------
    // DATABASE SETTINGS
    // ------------------------------------------------------------------------
    const DB_HOST = 'localhost'; // original
    //const DB_HOST = 'sql104.byethost.com'; //agregado
    //const DB_NAME = 'id775760_cian';
    const DB_NAME = 'citas'; // original
    //const DB_NAME = 'b32_21881771_cian'; ///agregado
    const DB_USERNAME = 'root'; //original
    //const DB_USERNAME = 'b32_21881771'; //agregado'
    //const DB_USERNAME = 'id775760_centrocian';
    //const DB_PASSWORD = 'carito1965';
    //const DB_PASSWORD = '9876jD$$'; //original en blanco
    const DB_PASSWORD = '';
    //
    // ------------------------------------------------------------------------
    // GOOGLE CALENDAR SYNC
    // ------------------------------------------------------------------------
    const GOOGLE_SYNC_FEATURE = FALSE; // Enter TRUE or FALSE
    const GOOGLE_PRODUCT_NAME = '';
    const GOOGLE_CLIENT_ID = '';
    const GOOGLE_CLIENT_SECRET = '';
    const GOOGLE_API_KEY = '';

}

/* End of file config.php */
/* Location: ./config.php */
