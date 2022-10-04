#Created by Vivian
#Title - Apache Server Script

# step 1 - install apache2

#sudo apt install apache2 -y >> /dev/null

if [[ $UID -eq 0 ]];

then

command -v apache2

if [[ $? -eq 0 ]];

then

 cd /var/www/html/

 wget https://github.com/startbootstrap/startbootstrap-creative/archive/gh-pages.zip

 unzip gh-pages.zip -d /var/www/html

sudo systemctl restart apache2

echo "installation successful, kindly check your browser using your ip now"

else

echo "Apache is not installed, this program requires it to work"

exit 1

fi

else

echo "Only an Admin can run this program"

fi

