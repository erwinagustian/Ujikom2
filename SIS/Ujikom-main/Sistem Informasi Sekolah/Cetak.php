<html>
<head>
	<title>Cetak</title>
</head>
<body>
 
	<center>
 
    <h3 class="text-center" style="color:black">Data Siswa SDI Alhidayah Pamulang<br>
Sampai Dengan
        <?php
date_default_timezone_set('Asia/Jakarta');
echo date('d F Y '); // Hasil: 20-01-2017 05:32:15 
echo date('H:i');
    ?> Wib<br>
 
	</center>
 
	<?php 
	include 'koneksi.php';
	?>
    
 <table table border="1" align="center">
	<thead>
		<tr>
		<th>NIS</th>
			<th>Nama Siswa</th>
			<th>Email</th>
			<th>Tanggal Lahir</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th>Notelp</th>
		
		</tr>
	</thead>
	<tbody>
		<?php $ambil=$koneksi->query("SELECT * FROM data_penerima"); ?>
		<?php  while($pecah = $ambil->fetch_assoc()){ ?>
		<tr>
            <td><?php echo $pecah['id_no']; ?></td>
			<td><?php echo $pecah['alokasi_dana']; ?></td>
			<td><?php echo $pecah['transaksi']; ?></td>
			<td><?php echo $pecah['Dana']; ?></td>
			<td><?php echo $pecah['Nama']; ?></td>
			<td><?php echo $pecah['Hp']; ?></td>
			<td><?php echo $pecah['Email']; ?></td>
		</tr>
		<?php 
		}
		?>
	</table>
 
	<script>
		window.print();
	</script>
 
</body>
</html>