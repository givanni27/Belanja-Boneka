# Menggunakan image FrankenPHP yang mendukung PHP 8.2
FROM dunglas/frankenphp:latest-php8.2

# Menginstall ekstensi yang dibutuhkan
RUN install-php-extensions mysqli pdo_mysql

# Set folder kerja
WORKDIR /app

# Salin semua file project ke /app
COPY . /app

# CMD menjalankan FrankenPHP di port yang diberikan Railway
CMD ["frankenphp", "-S", "0.0.0.0:$PORT", "public/index.php"]
