# import the necessary packages
import sys
from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2
def showPixelValue(event, x,y ,flags, image):
   if event == 4:
      sys.stdout.write(str(image[y][x]))
      sys.stdout.flush()
      sys.stdout.write(' '*20 + '\r')
      sys.stdout.flush()
   
if __name__ == '__main__':
 
   fileName = raw_input("File Name:")

   # initialize the camera and grab a reference to the raw camera capture
   camera = PiCamera()
   rawCapture = PiRGBArray(camera)
 
   # allow the camera to warmup
   time.sleep(0.1)
 
   # grab an image from the camera
   print "Capturing Image..."
   try:
      camera.capture(rawCapture, format="bgr")
      image = rawCapture.array
   except:
      print "Failed to capture"
 
   # display the image on screen and wait for a keypress
   #try:
   #   cv2.imshow("Image", image)
   #except Exception, e:
   #   print e

   # save the image to the disk
   print "Saving image %s" %fileName
   try:
      cv2.imwrite(fileName, image)
   except:
      print "Couldn't save %s" %fileName
      pass

   image = cv2.imread(fileName);
   image = cv2.resize(image, (960,540))
   cv2.imshow('output', image)
   cv2.setMouseCallback('output',showPixelValue, image)
   print('Click the image for a pixel value, please')
   cv2.waitKey(0)
   cv2.destroyAllWindows()
   
