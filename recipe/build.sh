#!/bin/bash
set -ex

export CMAKE_BUILD_PARALLEL_LEVEL=${CPU_COUNT}

${PYTHON} -m pip install . -v

# Clean up build directory to reduce size
rm -rf "${SRC_DIR}/build"
