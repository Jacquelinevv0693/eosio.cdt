include(ExternalProject)

ExternalProject_Add(
  EosioWasmLibraries
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/libraries"
  BINARY_DIR "${CMAKE_BINARY_DIR}/libraries"
  CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${CMAKE_BINARY_DIR}/lib/cmake/${CMAKE_PROJECT_NAME}/EosioWasmToolchain.cmake -DEOSIO_CDT_BIN=${CMAKE_BINARY_DIR}/lib/cmake/${CMAKE_PROJECT_NAME}/ -DBASE_BINARY_DIR=${CMAKE_BINARY_DIR} -D__APPLE=${APPLE}
  UPDATE_COMMAND ""
  PATCH_COMMAND  ""
  TEST_COMMAND   ""
  INSTALL_COMMAND ""
  BUILD_ALWAYS 1
  DEPENDS BlancTools
)

