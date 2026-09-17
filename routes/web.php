<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/latihan-php', function () {
    $nama = 'Bunga Salsabla Pebriyani';
    $nilai = [80, 75, 90, 85, 88];

    $total = 0;

    foreach ($nilai as $angka) {
        $total += $angka;
    }

    $rataRata = $total / count($nilai);

    if ($rataRata >= 75) {
        $status = 'Lulus';
    } else {
        $status = 'Perlu Perbaikan';
    }

    return view('latihan-php', compact(
        'nama',
        'nilai',
        'rataRata',
        'status'
    ));
});