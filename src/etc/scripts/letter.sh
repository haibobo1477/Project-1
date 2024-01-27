
#!/bin/bash
# Draw the first letter H in green

ros2 service call /spawn turtlesim/srv/Spawn "{x: 3.0, y: 3.0, theta: 0.0, name: 'turtle2'}"
ros2 service call /turtle1/set_pen turtlesim/SetPen "{r: 0, g: 255, b: 0}"
ros2 topic pub "--once" "/turtle2/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: 6.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 6.28}}"
ros2 service call /turtle2/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 3.0, y: 3.54, theta: 0.0}"
ros2 service call /turtle2/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: 3.0, y: 1.54, theta: 0.0}"





ros2 topic pub "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: 4.5, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
ros2 topic pub "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: -2.25, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
ros2 topic pub "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
ros2 topic pub "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: 2.25, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
ros2 topic pub "--once" "/turtle1/cmd_vel" "geometry_msgs/msg/Twist" "{linear: {x: 0.0, y: -4.5, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"


