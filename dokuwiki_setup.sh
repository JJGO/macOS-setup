# To run dokuwiki locally

sudo apachectl start
cd /etc/apache2/
sudo cp httpd.conf httpd.conf.sierra
sudo vim httpd.conf
# Uncomment line with php*.so
sudo apachectl restart

cp -r ~/Dropbox\ \(Personal\)/dokuwiki dokuwiki
chown -R _www dokuwiki