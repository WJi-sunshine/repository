#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]:-${(%):-%x}}" )" >/dev/null 2>&1 && pwd )"
PASSWD="1"
source ${CURRENT_DIR}/devel/setup.bash
source ${CURRENT_DIR}/devel/setup.zsh

# odom and serial
echo ${PASSWD} | sudo -S chmod +777 /dev/tty*

roslaunch tank_sdk tank_udp.launch & sleep 1
# roslaunch tank_sdk tank_sdk.launch serial_port:=/dev/ttyTHS0 & sleep 1
# roslaunch vrpn_client_ros sample.launch & sleep 1
roslaunch fast_lio mapping_with_driver.launch & sleep 1

# ctrl
# roslaunch mpc_controller test_mpc.launch sim:=false test_mpc:=true
# roslaunch traj_planner run_in_exp.launch
wait;
