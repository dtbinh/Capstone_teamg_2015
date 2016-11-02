# CMake generated Testfile for 
# Source directory: /home/gauri/mrsd_project/robographers_teamg/src/sound_play
# Build directory: /home/gauri/mrsd_project/robographers_teamg/build/sound_play
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_sound_play_nosetests_scripts.test "/home/gauri/mrsd_project/robographers_teamg/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/gauri/mrsd_project/robographers_teamg/build/test_results/sound_play/nosetests-scripts.test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/gauri/mrsd_project/robographers_teamg/build/test_results/sound_play" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/gauri/mrsd_project/robographers_teamg/src/sound_play/scripts/test --with-xunit --xunit-file=/home/gauri/mrsd_project/robographers_teamg/build/test_results/sound_play/nosetests-scripts.test.xml")
SUBDIRS(test)
