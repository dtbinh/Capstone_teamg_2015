#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gauri/mrsd_project/robographers_teamg/src/my_rapps"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gauri/mrsd_project/robographers_teamg/install/lib/python2.7/dist-packages:/home/gauri/mrsd_project/robographers_teamg/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gauri/mrsd_project/robographers_teamg/build" \
    "/usr/bin/python" \
    "/home/gauri/mrsd_project/robographers_teamg/src/my_rapps/setup.py" \
    build --build-base "/home/gauri/mrsd_project/robographers_teamg/build/my_rapps" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/gauri/mrsd_project/robographers_teamg/install" --install-scripts="/home/gauri/mrsd_project/robographers_teamg/install/bin"
