#!/usr/bin/env python
import rospy
import time
import datetime
import csv
from std_msgs.msg import String
import os

myvar68 = '0,0,0,0,0,0'
myvar69 = '0,0,0,0,0,0'
myvarBaro = '0,0,0,0,0,0'
def callback68(data):
    global myvar68
    myvar68 = data.data
    
def callback69(data):
    global myvar69
    myvar69 = data.data

def callbackBaro(data):
    global myvarBaro
    myvarBaro = data.data
    
def listener():

    rospy.init_node('mpu6050_listener', anonymous=True)
    

if __name__ == '__main__':
    
    currPath = os.getcwd()
    dirName = str(datetime.datetime.now())[0:16]
    dirName = dirName.replace(" ", "_")
    dirPath = str(currPath) + "/data/" + dirName
    os.mkdir(dirPath)
    listener()
    startTime = time.time()
    title = ['time', 'acceX', 'acceY', 'acceZ', 'gyroX', 'gyroY', 'gyroZ']
    title2 = ['time', 'temperature', 'pressure','altitude', 'sealevel pressure']
    fileName68 = 'data/' + dirName + '/'+ "IMU_68.csv" # get current time to name csv file
    fileName68 = fileName68.replace(" ", "_")
    fileName69 = 'data/' + dirName + '/' + "IMU_69.csv" # get current time to name csv file
    fileName69 = fileName69.replace(" ", "_")
    fileNameBaro = 'data/' + dirName + '/' + "baro.csv" 
    
    
    with open(fileName68, 'a') as csvFile68:
        writer68 = csv.writer(csvFile68)
        writer68.writerow(title)
        csvFile68.close()
    
    with open(fileName69, 'a') as csvFile69:
        writer69 = csv.writer(csvFile69)
        writer69.writerow(title)
        csvFile69.close()
    
    with open(fileNameBaro, 'a') as csvFileBaro:
        writerBaro = csv.writer(csvFileBaro)
        writerBaro.writerow(title2)
        csvFileBaro.close()
    
    try: 
        while not rospy.is_shutdown():
            rospy.Subscriber("mpu6050_data_68", String, callback68)
        
            rospy.Subscriber("mpu6050_data_69", String, callback69)
            
            rospy.Subscriber("BMP085_data", String, callbackBaro)
            
            '''
            if myvar68 == "0.0" or myvar69 == "0.0" or mycvrBaro == "0.0":
                print "data logged incorrectly"
                continue
            '''
            print myvar68
            print myvar69
            print myvarBaro
            writeTime = time.time() - startTime
            myData68 = myvar68[3:].split(',')
            # myData68 = [float(data) for data in myData68]
            myData68.insert(0,writeTime)
            
            myData69 = myvar69[3:].split(',')
            # myData69 = [float(data) for data in myData69]
            myData69.insert(0,writeTime)
            
            myDataBaro = myvarBaro.split(',')
            # myDataBaro = [float(data) for data in myDataBaro]
            myDataBaro.insert(0,writeTime)
    
            with open(fileName68, 'a') as csvFile68:
                writer68 = csv.writer(csvFile68)
                writer68.writerow(myData68)
                csvFile68.close()
                    
            with open(fileName69, 'a') as csvFile69:
                writer69 = csv.writer(csvFile69)
                writer69.writerow(myData69)
                csvFile69.close()
            
            with open(fileNameBaro, 'a') as csvFileBaro:
                writerBaro = csv.writer(csvFileBaro)
                writerBaro.writerow(myDataBaro)
                csvFileBaro.close()
    except KeyboardInterrupt:
        pass
    
                
        
        
        
        