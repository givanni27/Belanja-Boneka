# Image FrankenPHP dengan PHP 8.2
FROM dunglas/frankenphp:latest-php8.2

# Install ekstensi mysqli dan pdo_mysql
RUN install-php-extensions mysqli pdo_mysql

# Copy project
COPY . /app

# Set working directory
WORKDIR /app

# Start FrankenPHP (tanpa flag)
CMD ["frankenphp", "run"]
