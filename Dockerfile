FROM shlinkio/shlink:stable

# Copy custom 404 page
COPY 404.html /etc/shlink/public/404.html

# Expose port
EXPOSE 8080

# Use SQLite for simplicity - it's fine for a personal URL shortener
ENV DB_DRIVER=sqlite
ENV DB_NAME=/etc/shlink/data/database.sqlite
ENV DEFAULT_DOMAIN=go.mrh.is
ENV IS_HTTPS_ENABLED=true