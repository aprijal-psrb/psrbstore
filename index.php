<?php require_once('Connections/pasaribu_SERVER.php'); ?><?phpif (!function_exists("GetSQLValueString")) {function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") {  if (PHP_VERSION < 6) {    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;  }  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);  switch ($theType) {    case "text":      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";      break;        case "long":    case "int":      $theValue = ($theValue != "") ? intval($theValue) : "NULL";      break;    case "double":      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";      break;    case "date":      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";      break;    case "defined":      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;      break;  }  return $theValue;}}$maxRows_rs_barang = 10;$pageNum_rs_barang = 0;if (isset($_GET['pageNum_rs_barang'])) {  $pageNum_rs_barang = $_GET['pageNum_rs_barang'];}$startRow_rs_barang = $pageNum_rs_barang * $maxRows_rs_barang;mysql_select_db($database_pasaribu_SERVER, $pasaribu_SERVER);$query_rs_barang = "SELECT * FROM barang";$query_limit_rs_barang = sprintf("%s LIMIT %d, %d", $query_rs_barang, $startRow_rs_barang, $maxRows_rs_barang);$rs_barang = mysql_query($query_limit_rs_barang, $pasaribu_SERVER) or die(mysql_error());$row_rs_barang = mysql_fetch_assoc($rs_barang);if (isset($_GET['totalRows_rs_barang'])) {  $totalRows_rs_barang = $_GET['totalRows_rs_barang'];} else {  $all_rs_barang = mysql_query($query_rs_barang);  $totalRows_rs_barang = mysql_num_rows($all_rs_barang);}$totalPages_rs_barang = ceil($totalRows_rs_barang/$maxRows_rs_barang)-1;?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>Tampilan Data Barang</title></head><body><table width="100%" border="1" cellpadding="0" cellspacing="0" summary="Table Barang">	<caption>		table_barang	</caption>	<tr>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>		<th scope="col">&nbsp;</th>	</tr>	<?php do { ?>		<tr>			<td><?php echo $row_rs_barang['id_barang']; ?></td>			<td><?php echo $row_rs_barang['id_user']; ?></td>			<td><?php echo $row_rs_barang['id_merek']; ?></td>			<td><?php echo $row_rs_barang['id_penjual']; ?></td>			<td><?php echo $row_rs_barang['id_gambar']; ?></td>			<td><?php echo $row_rs_barang['nama_barang']; ?></td>			<td><?php echo $row_rs_barang['stok_barang']; ?></td>			<td><?php echo $row_rs_barang['satuan_barang']; ?></td>			<td><?php echo $row_rs_barang['harga_barang']; ?></td>			<td><?php echo $row_rs_barang['tgl_harga_stok_barang']; ?></td>			<td><?php echo $row_rs_barang['kode_barang']; ?></td>			<td><?php echo $row_rs_barang['lokasi_barang']; ?></td>			<td><?php echo $row_rs_barang['kategori_barang']; ?></td>			<td><?php echo $row_rs_barang['deskripsi_barang']; ?></td>			<td><?php echo $row_rs_barang['id_favorite']; ?></td>		</tr>		<?php } while ($row_rs_barang = mysql_fetch_assoc($rs_barang)); ?>	<tr>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>		<td>&nbsp;</td>	</tr></table></body></html><?phpmysql_free_result($rs_barang);?>