# Menggunakan image FrankenPHP yang mendukung PHP 8.2
FROM dunglas/frankenphp:latest-php8.2

# Menginstall ekstensi mysqli dan pdo_mysql yang tadi hilang
RUN install-php-extensions mysqli pdo_mysql

# Menyalin semua file project ke folder /app (standar FrankenPHP)
COPY . /app

# Mengatur folder kerja
WORKDIR /app

CMD ["frankenphp", "-S", "0.0.0.0:$PORT", "public/index.php"]
