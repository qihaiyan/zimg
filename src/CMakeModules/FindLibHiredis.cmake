# - Try to find the LIBHIREDIS config processing library
# Once done this will define
#
# LIBHIREDIS_FOUND - System has LIBHIREDIS
# LIBHIREDIS_INCLUDE_DIR - the LIBHIREDIS include directory
# LIBHIREDIS_LIBRARIES 0 The libraries needed to use LIBHIREDIS

FIND_PATH(LIBHIREDIS_INCLUDE_DIR NAMES hiredis/hiredis.h PATHS "${CMAKE_CURRENT_SOURCE_DIR}/include")
FIND_LIBRARY(LIBHIREDIS_LIBRARY NAMES hiredis PATHS "${CMAKE_CURRENT_SOURCE_DIR}/lib" /usr/lib /usr/local/lib)

IF(LIBHIREDIS_INCLUDE_DIR AND LIBHIREDIS_LIBRARY)
	SET(LIBHIREDIS_FOUND 1)
ELSE (LIBHIREDIS_INCLUDE_DIR AND LIBHIREDIS_LIBRARY)
	SET(LIBHIREDIS_FOUND 0)
ENDIF (LIBHIREDIS_INCLUDE_DIR AND LIBHIREDIS_LIBRARY)

# Report the results.
IF (NOT LIBHIREDIS_FOUND)
    SET(LIBHIREDIS_DIR_MESSAGE "LibHiredis was not found.")
ENDIF (NOT LIBHIREDIS_FOUND)


INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBHIREDIS DEFAULT_MSG LIBHIREDIS_LIBRARY LIBHIREDIS_INCLUDE_DIR)

MARK_AS_ADVANCED(LIBHIREDIS_INCLUDE_DIR LIBHIREDIS_LIBRARY)