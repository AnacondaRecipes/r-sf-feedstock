#!/bin/bash
# configure.ac has a hardcoded way to test for GDAL in PROJ.4:
# ${CXX} ${CPPFLAGS} -o gdal_proj gdal_proj.cpp ${LIBS}
export CPPFLAGS="${CPPFLAGS} -Wl,-rpath,$PREFIX/lib"
export PROJ_LIB=${PREFIX}/share/proj
$R CMD INSTALL --build .
