# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

# Do not place header guards here

# Unset:
#   * ${PACKAGE_NAME}_ROOT (CMake variable)
#   * ${PACKAGE_NAME}_ROOT (CMake cache variable)
#   * ${PACKAGE_NAME}_ROOT (environment variable)

# Set CMake variables:
#   * HUNTER_${PACKAGE_NAME}_VERSION
#   * HUNTER_${PACKAGE_NAME}_CMAKE_ARGS (optionally)

# Usage:
#   hunter_config(Foo VERSION 1.0.0)
#   hunter_config(Boo VERSION 1.2.3z CMAKE_ARGS BOO_WITH_A=ON)

# Wiki:
#   * https://github.com/ruslo/hunter/wiki/dev.modules#hunter_config

include(hunter_config)
include(hunter_user_error)

hunter_config(catkin GIT_SUBMODULE "submodules/catkin")
hunter_config(message_generation GIT_SUBMODULE "submodules/message_generation")
hunter_config(gencpp GIT_SUBMODULE "submodules/gencpp")
hunter_config(geneus GIT_SUBMODULE "submodules/geneus")
hunter_config(gennodejs GIT_SUBMODULE "submodules/gennodejs")
hunter_config(genlisp GIT_SUBMODULE "submodules/genlisp")
hunter_config(genmsg GIT_SUBMODULE "submodules/genmsg")
hunter_config(genpy GIT_SUBMODULE "submodules/genpy")
hunter_config(roscpp_core GIT_SUBMODULE "submodules/roscpp_core")
