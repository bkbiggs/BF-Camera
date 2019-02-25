# BF-Camera

This is the "code" that manages the capture for photos from the
bird feeder.

crontab is used to start (or restart) the camera.py master code. 

camera.py loops over a 2 minute photo cycle, which <br>
    - stamps the photo with the current datetime (datetime_image.sh)<br>
    - creates the icon version of the photo for user (make_icon.sh)<br>
    - "updates" a monitoring version of the current picture for web monitoring<br>

camera.py makes sure that the photo isn't captured unless it's taken between between
sunrise and sunset. That time frame is provided in the sunrise_sunset.data file
updated from raspberrypi02 on a daily(?) basis.

remove_old_images.sh is also run from cron to remove all but the most recent 800
pictures. The import process includes a step to choose from the current pictures
any that we want to make available. That moves the files from the camera host to
raspberrypi04 pending "place". The rest are cleaned out by this script to keep
the storage within a clean range.
