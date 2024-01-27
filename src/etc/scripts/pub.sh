#!/bin/bash

generate_instant_publisher() {
    local opt="$1"
    local topic_name="$2"
    local msg_type="$3"
    local msg="$4"

ros2 topic pub $opt $topic_name $msg_type "$msg" 

}



# Example usage:

generate_instant_publisher "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: 4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
generate_instant_publisher "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: 5.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -5.5}}"
