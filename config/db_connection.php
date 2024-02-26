<?php


$MORE_INFO_LINK = '/more_info.php';

$MAX_PAGE_DISPLAY = 20;

$SERVER_NAME = "localhost";
$USERNAME = "root";
$PASSWORD = "";
$DB_NAME = 'profile';
$PORT = 3306;

// Create connection
$connection = mysqli_connect($SERVER_NAME, $USERNAME, $PASSWORD, $DB_NAME, $PORT);
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}
mysqli_set_charset($connection, "utf8") or die('Could not connect: ' . mysqli_connect_error());
// Check connection

$setting_sql = "SELECT * FROM `setting` where id = 1;";
$SETTING = mysqli_query($connection, $setting_sql);
$SETTING = mysqli_fetch_assoc($SETTING);
