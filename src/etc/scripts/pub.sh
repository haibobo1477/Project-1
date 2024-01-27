#!/bin/bash

generate_instant_publisher() {
    local opt="$1"
    local topic_name="$2"
    local msg_type="$3"
    local msg="$4"

ros2 topic pub $opt $topic_name $msg_type "$msg" 

}



# Example usage:
generate_instant_publisher "--rate 100" "/drone/pose" "geometry_msgs/msg/Pose" "{position: {x: 2.0, y: 0.0, z: 0.0}, orientation: {w: 1.0, x: 0.0, y: 0.0, z: 1.8}}"

