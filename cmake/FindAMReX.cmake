find_package(AMReX REQUIRED COMPONENTS
  HINTS ${AMREX_DIR} $ENV{AMREX_DIR} ${CMAKE_PREFIX_PATH}
  NO_DEFAULT_PATH)

if(NOT TARGET XSDK::AMReX)
  add_library(XSDK_AMREX INTERFACE)
  target_link_libraries(XSDK_AMREX INTERFACE AMReX::amrex)
  add_library(XSDK::AMReX ALIAS XSDK_AMREX)
endif()
