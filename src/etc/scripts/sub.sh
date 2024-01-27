#!/bin/bash


# Ask for the <topic_name>
read -p "Type the topic_name: " topic_name

# Ask for the <file_name> CVS file
read -p "Type the file_name.cvs:" file_name

touch "$file_name"


ros2 topic pub --rate 10 $topic_name geometry_msgs/msg/pose



sub(){
local topic_name
local file_name

echo "$topic Name" > "$file_name"
nano $file.name

}

sub

