# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "main_loop: 5 messages, 3 services")

set(MSG_I_FLAGS "-Imain_loop:/home/frank/catkin_ws/src/main_loop/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(main_loop_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" ""
)

get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/path.srv" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/srv/path.srv" ""
)

get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" ""
)

get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" NAME_WE)
add_custom_target(_main_loop_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main_loop" "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)
_generate_msg_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/agent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)
_generate_msg_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)
_generate_msg_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)

### Generating Services
_generate_srv_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)
_generate_srv_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)
_generate_srv_cpp(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
)

### Generating Module File
_generate_module_cpp(main_loop
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(main_loop_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(main_loop_generate_messages main_loop_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/path.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_cpp _main_loop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main_loop_gencpp)
add_dependencies(main_loop_gencpp main_loop_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main_loop_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)
_generate_msg_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/agent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)
_generate_msg_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)
_generate_msg_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)

### Generating Services
_generate_srv_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)
_generate_srv_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)
_generate_srv_eus(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
)

### Generating Module File
_generate_module_eus(main_loop
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(main_loop_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(main_loop_generate_messages main_loop_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/path.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_eus _main_loop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main_loop_geneus)
add_dependencies(main_loop_geneus main_loop_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main_loop_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)
_generate_msg_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/agent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)
_generate_msg_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)
_generate_msg_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)

### Generating Services
_generate_srv_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)
_generate_srv_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)
_generate_srv_lisp(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
)

### Generating Module File
_generate_module_lisp(main_loop
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(main_loop_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(main_loop_generate_messages main_loop_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/path.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_lisp _main_loop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main_loop_genlisp)
add_dependencies(main_loop_genlisp main_loop_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main_loop_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)
_generate_msg_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/agent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)
_generate_msg_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)
_generate_msg_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)

### Generating Services
_generate_srv_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)
_generate_srv_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)
_generate_srv_nodejs(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
)

### Generating Module File
_generate_module_nodejs(main_loop
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(main_loop_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(main_loop_generate_messages main_loop_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/path.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_nodejs _main_loop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main_loop_gennodejs)
add_dependencies(main_loop_gennodejs main_loop_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main_loop_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)
_generate_msg_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/agent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)
_generate_msg_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)
_generate_msg_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)

### Generating Services
_generate_srv_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)
_generate_srv_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)
_generate_srv_py(main_loop
  "/home/frank/catkin_ws/src/main_loop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
)

### Generating Module File
_generate_module_py(main_loop
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(main_loop_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(main_loop_generate_messages main_loop_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/main_state.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/agent.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/path.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/from_goap.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/msg/string_with_header.msg" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/frank/catkin_ws/src/main_loop/srv/goap_.srv" NAME_WE)
add_dependencies(main_loop_generate_messages_py _main_loop_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main_loop_genpy)
add_dependencies(main_loop_genpy main_loop_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main_loop_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main_loop
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(main_loop_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main_loop
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(main_loop_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main_loop
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(main_loop_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main_loop
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(main_loop_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main_loop
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(main_loop_generate_messages_py std_msgs_generate_messages_py)
endif()
