CU_SET_PATH("CMAKE_MOD_CROSSFACTIONEXTENDED_DIR" "${CMAKE_CURRENT_LIST_DIR}")

AC_ADD_SCRIPT("${CMAKE_CURRENT_LIST_DIR}/src/crossfaction_extended_scripts.cpp")

AC_ADD_SCRIPT_LOADER("ModCrossFactionExtended" "${CMAKE_CURRENT_LIST_DIR}/src/crossfaction_extended_scripts_loader.h")

CU_ADD_HOOK(AFTER_WORLDSERVER_CMAKE "${CMAKE_CURRENT_LIST_DIR}/src/cmake/after_ws_install.cmake")