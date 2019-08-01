## *********************************************************
##
## File autogenerated for the memsense_imu package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'IMU device type name', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'imu_type', 'edit_method': "{'enum_description': 'Memsense IMU device type.', 'enum': [{'srcline': 18, 'description': 'Nano IMU with 3 temperature sensors', 'srcfile': '/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/cfg/IMUDynParams.cfg', 'cconsttype': 'const char * const', 'value': 'nIMU_3temp', 'ctype': 'std::string', 'type': 'str', 'name': 'NIMU_3TEMP'}]}", 'default': 'nIMU_3temp', 'level': 3, 'min': '', 'type': 'str'}, {'srcline': 290, 'description': "Gyroscopes' range (deg/sec).", 'max': 1200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyros_range', 'edit_method': '', 'default': 150.0, 'level': 3, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': "Accelerometers' range (g).", 'max': 40.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accels_range', 'edit_method': '', 'default': 2.0, 'level': 3, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': "Magnetometers' range (gauss).", 'max': 4.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mags_range', 'edit_method': '', 'default': 1.9, 'level': 3, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Serial port device file name (including full path)', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'serial_port', 'edit_method': '', 'default': '/dev/ttyUSB0', 'level': 1, 'min': '', 'type': 'str'}, {'srcline': 290, 'description': "Gyroscopes' var (deg^2/seg^2).", 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyros_var', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': "Accelerometers' var (g^2).", 'max': 1e-05, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accels_var', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': "Magnetometers' var (gauss^2).", 'max': 1e-05, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mags_var', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': "x gyroscope's bias (deg/sec).", 'max': 1.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyro_bias_x', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -1.5, 'type': 'double'}, {'srcline': 290, 'description': "y gyroscope's bias (deg/sec).", 'max': 1.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyro_bias_y', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -1.5, 'type': 'double'}, {'srcline': 290, 'description': "z gyroscope's bias (deg/sec).", 'max': 1.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'gyro_bias_z', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -1.5, 'type': 'double'}, {'srcline': 290, 'description': "x accelerometer's bias (g).", 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accel_bias_x', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 290, 'description': "y accelerometer's bias (g).", 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accel_bias_y', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 290, 'description': "z accelerometer's bias (g).", 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'accel_bias_z', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 290, 'description': "x magnetometer's bias (gauss).", 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mag_bias_x', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -1.0, 'type': 'double'}, {'srcline': 290, 'description': "y magnetometer's bias (gauss).", 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mag_bias_y', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -1.0, 'type': 'double'}, {'srcline': 290, 'description': "z magnetometer's bias (gauss).", 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mag_bias_z', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': -1.0, 'type': 'double'}, {'srcline': 290, 'description': 'Polling rate (set the device maximum output to avoid busy waits (0.0 disables polling)', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'polling_rate', 'edit_method': '', 'default': 150.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Rate for filtered data publications (0.0 disables filtering)', 'max': 50.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'filter_rate', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 290, 'description': 'Frame in which IMU readings will be returned', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'frame_id', 'edit_method': '', 'default': 'imu', 'level': 0, 'min': '', 'type': 'str'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

IMUDynParams_NIMU_3TEMP = 'nIMU_3temp'
