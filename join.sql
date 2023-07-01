-- mengunakan database 
use tugasakhir;

desc ms_pelanggan_dqlab;
desc tr_penjualan_dqlab;

-- mengambil kolom kode pelanggan, nama produk, nama pelanggan, qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- cross join 
-- ambil kolom nama_pelanggan, nama_produk, qty, relationship key;
select  nama_pelanggan, nama_produk, tp.qty 
from tr_penjualan_dqlab as tp 
join ms_pelanggan_dqlab as mp 
on true;


-- melakukkan left outer join
-- ambil kolom nama_pelanggan, nama_produk, qty, left outer 
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty 
from tr_penjualan_dqlab as tp
left outer join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- right left outer 
-- ambil kolom nama_pelanggan, nama_produk, qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty 
from tr_penjualan_dqlab as tp
 right outer join ms_pelanggan_dqlab as mp
 on tp.kode_pelanggan = mp.kode_pelanggan;





 


