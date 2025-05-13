#!/bin/bash

# Exit on error
set -e

# Set session name
SESSION="mxcarkit"

# Kill any existing session with the same name
tmux kill-session -t $SESSION 2>/dev/null || true

# Create a new session with a single window
tmux new-session -d -s $SESSION -n "ROS Nodes"

# Start ROS core in the first pane
tmux send-keys -t $SESSION:0 "source /opt/ros/humble/setup.zsh" C-m
tmux send-keys -t $SESSION:0 "cd $(pwd)" C-m
tmux send-keys -t $SESSION:0 "source install/setup.zsh" C-m
tmux send-keys -t $SESSION:0 "ros2 daemon start" C-m
tmux send-keys -t $SESSION:0 "ros2 run line_follower line_tracker" C-m

# Split the window horizontally
tmux split-window -h -t $SESSION:0

# Launch PID controller in the second pane
tmux send-keys -t $SESSION:0.1 "source /opt/ros/humble/setup.zsh" C-m
tmux send-keys -t $SESSION:0.1 "cd $(pwd)" C-m
tmux send-keys -t $SESSION:0.1 "source install/setup.zsh" C-m
tmux send-keys -t $SESSION:0.1 "ros2 run controller pid_node" C-m

# Attach to the session
tmux attach-session -t $SESSION
