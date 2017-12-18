<?php

// Deployment on Heroku with ClearDB for MySQL
// $url = parse_url(getenv("CLEARDB_DATABASE_URL"));
$server = "localhost";
$username = "hananekharraf";
$password = "Nw0ik^67";
$db = "hanane_DB";

// Doctrine (db)
$app['db.options'] = array(
    'driver'   => 'pdo_mysql',
    'charset'  => 'utf8',
    'host'     => "$server",
    'port'     => '3306',
    'dbname'   => "$db",
    'user'     => "$username",
    'password' => "$password",
);

// define log parameters
$app['monolog.level'] = 'WARNING';

// enable the debug mode
$app['debug'] = true;
