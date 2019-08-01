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

echo_and_run cd "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pi/Desktop/IMU/catkin_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pi/Desktop/IMU/catkin_workspace/install/lib/python2.7/dist-packages:/home/pi/Desktop/IMU/catkin_workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pi/Desktop/IMU/catkin_workspace/build" \
    "/usr/bin/python" \
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/setup.py" \
    build --build-base "/home/pi/Desktop/IMU/catkin_workspace/build/robot_upstart" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/pi/Desktop/IMU/catkin_workspace/install" --install-scripts="/home/pi/Desktop/IMU/catkin_workspace/install/bin"
