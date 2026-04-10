# Gunakan FrankenPHP image PHP 8.2
FROM dunglas/frankenphp:latest-php8.2

# Install ekstensi MySQL
RUN install-php-extensions mysqli pdo_mysql

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd \
        --with-freetype \
        --with-jpeg \
    && docker-php-ext-install gd

# Set folder kerja
WORKDIR /app

# Salin semua file project
COPY . /app

