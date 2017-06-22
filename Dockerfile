FROM bingen/rpi-nginx

# update and install php5
RUN sudo apt-get update && \
    sudo apt-get install -y php5 php5-fpm php-pear php5-common php5-mcrypt php5-mysql php5-cli php5-gd php5-curl php-apc

# overwrite the default-configuration with our own settings - enabling PHP
COPY default /etc/nginx/sites-available/default

CMD service php5-fpm start && nginx