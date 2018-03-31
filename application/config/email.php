<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

// Add custom values by settings them to the $config array.
// Example: $config['smtp_host'] = 'smtp.gmail.com';
// @link https://codeigniter.com/user_guide/libraries/email.html
//$config['useragent'] = 'Easy!Appointments';
//$config['protocol'] = 'mail'; // or 'smtp'
$config['mailtype'] = 'html'; // or 'text'
// $config['smtp_host'] = 'smtp.gmail.com';
// $config['smtp_user'] = 'jdcadenas@gmail.com';
// $config['smtp_pass'] = '9876jD$$';
// $config['smtp_crypto'] = 'ssl'; // or 'tls'
// $config['smtp_port'] = 25;
// //Indicamos el protocolo a utilizar
$config['protocol'] = 'smtp';

//El servidor de correo que utilizaremos
$config["smtp_host"] = 'ssl://smtp.googlemail.com';
//Nuestro usuario smtp.gmail.com
$config["smtp_user"] = 'jdcadenas@gmail.com';

//Nuestra contraseña
$config["smtp_pass"] = '9876jD$$';
$config['smtp_crypto'] = 'ssl';
//El puerto que utilizará el servidor smtp
$config["smtp_port"] = '465';
//El juego de caracteres a utilizar
$config['charset'] = 'utf-8';

//Permitimos que se puedan cortar palabras
$config['wordwrap'] = TRUE;

//El email debe ser valido
$config['validate'] = true;
