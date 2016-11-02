#!/bin/bash


TURTLEBOTS="turtlebot01 turtlebot02 turtlebot03"
RAPP="my_rapps/photo_click"

for turtlebot in ${TURTLEBOTS}
do
  remappings="{remap_from: /emotion_chatter, remap_to: /${turtlebot}/emotion_chatter}, {remap_from: /theta_y, remap_to: /${turtlebot}/theta_y}, {remap_from: /flag, remap_to: /${turtlebot}/flag}"
  parameters=""
  rosservice call /${turtlebot}/start_rapp "${RAPP}" ["${remappings}"] ["${parameters}"] &
done

wait

exit 0

