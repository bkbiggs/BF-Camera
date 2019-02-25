python3 /home/pi/camera.py
echo Wrapping up...
mail -s "raspberrypi09 camera not shutting down in 2 minutes" loves.toys@gmail.com -A /var/www/html/myImage.jpg < camera.py
sleep 10
echo delay to try to allow transmision to complete..
# wait two minutes to transfer closing email
sleep 110
echo finishing...
sleep 10
#sudo shutdown -h now
