<h1 class="text-center" style="color:black">Sistem Informasi SDI Alhidayah Pamulang<br>
<?php
date_default_timezone_set('Asia/Jakarta');
echo date('d F Y '); // Hasil: 20-01-2017 05:32:15 
echo date('H:i');
?>
</h1>

<a href="index.php?halaman=tambahData" class="btn btn-primary" style="margin:20px">Tambah Data Siswa</a>


<a href="Cetak.php" target="_blank">Cetak Data</a>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>NIS</th>
			<th>Nama Siswa</th>
			<th>Email</th>
			<th>Tanggal Lahir</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th>Notelp</th>
			<th>Aksi</th>
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
			<td>
                <a href="index.php?halaman=hapusData&id=<?php echo $pecah['id_no'];?>" class="btn btn-danger">hapus</a>
                <a href="index.php?halaman=ubahData&id=<?php echo $pecah['id_no']; ?>" class="btn btn-success">ubah</a>
			</td>
		</tr>
		<?php } ?>

	</tbody>
</table>
