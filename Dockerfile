FROM php:8.2-cli

# Install extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy aplikasi
COPY . /app
WORKDIR /app

# Set port Railway
ENV PORT=8080

# Start FrankenPHP
CMD ["php", "-S", "0.0.0.0:${PORT}", "-t", "public"]
