cd livox_ros_driver2
./build.sh ROS1

catkin_make -DCATKIN_WHITELIST_PACKAGES="tank_sdk" -DCMAKE_BUILD_TYPE=Release

catkin_make -DCATKIN_WHITELIST_PACKAGES="" -DCMAKE_BUILD_TYPE=Release -j1

# 过半了就可以换多线程继续编译

catkin_make -DCATKIN_WHITELIST_PACKAGES="" -DCMAKE_BUILD_TYPE=Release