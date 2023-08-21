## Camera & GPS Exercises

Please conduct excercises below in ./simulator folder. 

First of all, you need to connect ROS Noetic and Morai Simulation using rosbridge. Of course, you need to add camera sensor to your scout_mini. After this process, you need to reconnect the Network(F4) and Sensor(F3) settings in Morai Simulation.

```
roslaunch rosbridge_server rosbridge_websocket.launch
```

## How to execute Camera example

And change directory to ./simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros/scripts.

```
cd ./simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros/scripts
```

And use **python3** command to execute the codes below.

```
# For example
python3 9.LKAS.py
```

- 1.sub_camera.py:  
Subscribe gray video published by pub_camera node.  
You need to run **'2.pub_camera.py'** node first!
- 2.pub_camera.py:  
Publish rgb and gray image of subscribed compressed image(published from rosbridge_websocket).
- 3.bird_eye_view.py:  
Make a bird-eye view image by using the specific 4 camera image points.
- 4.white_line_detect.py:  
Transform bird-eye view image(from 3)'s color to HSV region and detect white lines only using thresholding.
- 5.yellow_line_detect.py:  
Transform bird-eye view image(from 3)'s color to HSV region and detect yellow lines only using thresholding.
- 6.blend_line.py:  
Using the 5, 6 above, extract the mask of white and yellow line, and mix them together to detect all road lanes in map.
- 7.binary_line.py:  
Using 6 above, binarize the blended line image using thresholding.
- 8.sliding_window.py:  
Using 7 above, conduct lane detect using sliding window algorithm. This just detect lines.  
![sliding_window](https://github.com/Daidalos99/Morai_Project/assets/95322972/f6d5a220-39a6-4a72-8677-4ffa71880803)

- 9.LKAS.py:  
Using 8 above, detect lanes with sliding window algorithm and move scout_mini automatically  
![LKAS](https://github.com/Daidalos99/Morai_Project/assets/95322972/d794e69f-afca-4552-ac63-30a60714896e)


## How to execute GPS example

Next is the GPS example. In this example, you need to add IMU and GPS sensor on your scout_mini. 

- path_maker.launch:  
Turn on this node and you can make path using GPS and IMU. Path that you made will be saved at ./simulation/MORAI-Example_WeGo/ros_example_packages/scout_ros/path/daidalos99.txt. I recommend you to **close the loop when making the path**(so that we can recognize the path easily on next step).
![gps_path_making](https://github.com/Daidalos99/Morai_Project/assets/95322972/51be6bfb-6b83-47b1-9643-61faa90e48be)

- planner.launch:  
This will plan the path based on the one extracted from **'path_maker.launch'**.    
![gps_planning](https://github.com/Daidalos99/Morai_Project/assets/95322972/9a2d4c74-c10a-499a-8807-e2f3c55a5fb8)