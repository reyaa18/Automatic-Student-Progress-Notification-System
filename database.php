<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost'; // or other host
$dbname = 'StudentProgress'; // your database name
$username = 'root'; // your database username
$password = ''; // your database password

$dsn = "mysql:host=$host;dbname=$dbname";
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (\PDOException $e) {
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}
