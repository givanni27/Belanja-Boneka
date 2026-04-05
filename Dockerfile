# Gunakan FrankenPHP image PHP 8.2
FROM dunglas/frankenphp:latest-php8.2

# Install ekstensi MySQL
RUN install-php-extensions mysqli pdo_mysql

# Set folder kerja
WORKDIR /app

# Salin semua file project
COPY . /app

