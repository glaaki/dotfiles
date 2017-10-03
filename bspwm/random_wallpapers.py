#!/usr/bin/python
# uses feh to display random wallpapers on any connected monitors.

import os
import glob
import subprocess
import time
import random
import sys
from gi.repository import Gdk

images = glob.glob(sys.argv[1] + '*')

for image in images:
    print image

first = images[0]

while True:
	#randomize the order. 
	#Ensure that we don't have the same first element as the last element.
	while first == images[0]:
		random.shuffle(images)
	
	for image in images:
		feh = subprocess.Popen(['feh', '--bg-fill', image])
		time.sleep(random.randint(20,35))

		#record the last image.
		first = image
		
		#be a nice guy.
		feh.terminate()
	random.shuffle(images)
