#ifndef TURTLEBOT_BEHAVIORS_H
#define TURTLEBOT_BEHAVIORS_H

namespace turtlebot_behaviors {

extern std::map<int, Eigen::Affine3d> poses;
extern std::map<int, Eigen::Affine3d> odoms;
extern std::map<std::string, int> robot_ids;

// Utility functions
void publishCommand(int rid, double v, double w);
void moveRobotToPoint(int rid, const Eigen::Vector3d & point);

// Behaviors
void flocking();
void alignHeading();
void moveForward();
void moveBackward();
void moveStop();
void turnClockwise();
void turnCounterclockwise();
void formationLineX();
void formationLineY();
void formationCircle();

namespace testing {

void testMoveRobotToPoint();

} // testing
} // turtlebot_behaviors

#endif /* TURTLEBOT_BEHAVIORS_H */
