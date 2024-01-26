#!/bin/bash

subscribe_and_write_csv() {
    # Ask for the <topic_name>
    read -p "Type the topic_name: " topic_name

    # Ask for the <file_name> CVS file
    read -p "Type the file_name.csv: " file_name

    # Retrieve the rate at which data is published
    read -p "Enter the rate at which data is published: " rate

    # Write all the topics of the previous publisher to <file_name>.cvs
    echo "Topic Name,Message Type" > "$file_name"
    
    # Placeholder for demonstration
    # You need to replace this with actual logic to retrieve topics from the previous publisher
    echo "$topic_name,geometry_msgs/msg/Pose" >> "$file_name"
    echo "Topics written to $file_name"

    # Placeholder for demonstration
    echo "Subscribing to $topic_name with rate $rate..."
    # Add your actual logic for subscribing to the specified topic with the given rate
}

# Call the function
subscribe_and_write_csv
