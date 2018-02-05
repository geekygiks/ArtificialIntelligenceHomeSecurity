# DeepLearningHomeSecurity
Home Security software designed based on Deep Learning architecture using widely used opensource tensorflow platform.
It has been tested on ubuntu 15.04/17.10 OS on AMD64 and ARM architecture. The software is distributed under 
APACHE licence (see licence). 

The standalone binary executable requires minimal external dependencies as the libraries such as tensorflow, openCV and others 
are linked in the software. The software works by capturing the image using inbuilt/USB powered webcam, comparing the subsequent 
images for pixel differences and piping the image through deep learning algorithm. Once the object of interest(human in 
present case) is detected, the software attempts to send email with image as an attachment to the designated email ids. The feature
is currently restricted to dummy email id, if you want to customize to yours send me an email with the request. I will send you the
required binaries. 

Usage:
========

  a). Download/extract the zip file or clone it to your /home directory
  
  b). After wards pass the following in your terminal
  
                $./monitor {/path/to/current/directory}
  
                Initiating the Camera !!
                =======================
                Initiating the Main Module !!
                =============================
                Done !!
                
                Output image is generated in "sendemail/" directory


