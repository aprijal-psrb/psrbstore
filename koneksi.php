<?php
$HOSTNAME = "ap-cdbr-azure-southeast-a.cloudapp.net";
$USERNAME = "b22ae7374ef298";
$PASSWORD = "35972ddf"; //Kosongkan jika tidak ada password mysql di laptop mu. Kosong -> ""
$DB_NAME = "pasaribu_store_db";
	
$koneksi = mysql_pconnect($HOSTNAME,$USERNAME,$PASSWORD) or trigger_error(mysql_error(), E_USER_ERROR);
$database = mysql_select_db($DB_NAME, $koneksi) or die(mysql_error() . "<br>Gagal memilih database !!");
?>