FROM ubuntu:latest

# Update and Upgrade
RUN apt-get update && apt-get upgrade -y

# Install all necessary services
RUN apt-get install -y vim git curl zip 
RUN apt-get install -y apache2 mysql-client
RUN ln -fs /usr/share/zoneinfo/US/Pacific /etc/localtime 
RUN apt-get install -y php libapache2-mod-php php-mysql php7.2-cli php7.2-curl php7.2-gd php7.2-mbstring php7.2-mysql php7.2-xml

# Change dir.conf
RUN mv /etc/apache2/mods-enabled/dir.conf /etc/apache2/mods-enabled/dir.conf.bak
COPY ./dir.conf /etc/apache2/mods-enabled/

# Cloning Application Repo
RUN cd /var/www/html
RUN mkdir affinity
RUN git clone https://github.com/csuntechlab/affinity.git /var/www/html/affinity
RUN chown -hR www-data:www-data affinity/
RUN ln -s /var/www/html/affinity/public /var/www/html/public


RUN mv /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf.bak
COPY ./000-default.conf /etc/apache2/sites-available/
RUN mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak
COPY ./apache2.conf /etc/apache2/

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN ls /var/www/html/
RUN cd /var/www/html/affinity && composer install

RUN service apache2 restart