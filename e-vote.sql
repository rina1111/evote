-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2019 pada 08.04
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-vote`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rts`
--

CREATE TABLE `data_rts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rts`
--

INSERT INTO `data_rts` (`id`, `rt`, `rw`, `kelurahan`, `kecamatan`, `created_at`, `updated_at`) VALUES
(1, 'RT 02', 'RW 01', 'Cisurupan', 'Cibiru', '2019-05-11 21:25:27', '2019-05-11 21:25:27'),
(3, 'RT 03', 'RW 01', 'Cisurupan', 'Cibiru', '2019-05-11 21:36:43', '2019-05-11 21:36:43'),
(4, 'RT 04', 'RW 01', 'Cisurupan', 'Cibiru', '2019-05-11 21:38:05', '2019-05-11 21:38:05'),
(12, 'RT 05', 'RW 02', 'Cisurupan', 'Cibiru', '2019-05-12 00:13:17', '2019-05-12 00:13:17'),
(14, 'RT 06', 'RW 02', 'Cisurupan', 'Cibiru', '2019-05-12 00:15:14', '2019-05-12 00:15:14'),
(16, 'RT 07', 'RW 02', 'Cisurupan', 'Cibiru', '2019-05-12 00:18:26', '2019-05-12 00:18:26'),
(17, 'RT 08', 'RW', 'cisurupan', 'cibiru', '2019-05-13 20:05:44', '2019-05-13 20:05:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_12_035248_create_data_rts_table', 2),
(8, '2019_05_12_073457_create_paslon_rws_table', 3),
(9, '2019_05_12_075306_create_paslonrts_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paslonrts`
--

CREATE TABLE `paslonrts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_paslon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_rt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt_id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paslonrts`
--

INSERT INTO `paslonrts` (`id`, `no_paslon`, `nm_rt`, `rt_id`, `pekerjaan`, `agama`, `umur`, `gambar`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '01', 'Nurhadi Ahmad Yohan', 1, 'Swasta', 'Islam', '35', 'avatar/TgHWANcm3JJoq0rpxbOnFCtlXpqyTL2fufqUXkbO.jpeg', 'jln. pasir impun no 35', '2019-05-12 01:22:34', '2019-05-12 01:22:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paslon_rws`
--

CREATE TABLE `paslon_rws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_paslon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(119) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paslon_rws`
--

INSERT INTO `paslon_rws` (`id`, `no_paslon`, `nm_rw`, `rw`, `pekerjaan`, `agama`, `umur`, `foto`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '01', 'Kim Syamsudin', 'RW 01', 'Swasta', 'Islam', '35', 'avatar/3rcJ6Xnge286IMpjxUGCeYUsTw0MkvdxRrGjgmUe.jpeg', 'jln. pasir impun no 36', '2019-05-12 03:21:01', '2019-05-12 03:21:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$kxQCL1qw5sY78fT9it4RH.EuVRL8kPo16gLhawD2c8kT.aQbQ33.m', NULL, '2019-05-11 20:06:16', '2019-05-11 20:06:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_rts`
--
ALTER TABLE `data_rts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paslonrts`
--
ALTER TABLE `paslonrts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paslonrts_rt_id_foreign` (`rt_id`);

--
-- Indeks untuk tabel `paslon_rws`
--
ALTER TABLE `paslon_rws`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_rts`
--
ALTER TABLE `data_rts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `paslonrts`
--
ALTER TABLE `paslonrts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `paslon_rws`
--
ALTER TABLE `paslon_rws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `paslonrts`
--
ALTER TABLE `paslonrts`
  ADD CONSTRAINT `paslonrts_rt_id_foreign` FOREIGN KEY (`rt_id`) REFERENCES `data_rts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
