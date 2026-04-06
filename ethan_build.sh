#!/bin/bash

module load cuda/12.4.1 gcc/12.2.0 openblas
# export WHISPER_CMAKE_FLAGS="-DBLAS_INCLUDE_DIRS=/apps/gcc/12.2.0/openblas/0.3.24/include/ -DGGML_CUDA=1 -DCMAKE_CUDA_COMPILER=/apps/compilers/cuda/12.4.1/bin/nvcc -DCMAKE_CUDA_ARCHITECTURES=89 -DGGML_BLAS=1"
export WHISPER_CMAKE_FLAGS="-DGGML_CUDA=1 -DCMAKE_CUDA_COMPILER=/apps/compilers/cuda/12.4.1/bin/nvcc -DCMAKE_CUDA_ARCHITECTURES=89"

# export R_LIBS_USER=/blue/bonniejdorr/ethanlmines/r_libs
export CUDA_PATH="/apps/compilers/cuda/12.4.1"
export CMAKE_MAKE_PROGRAM=/apps/compilers/gcc/12.2.0/bin/make
# export PATH="/apps/rstudio/bin/:$PATH"

# ./configure

R CMD INSTALL . # \
#  --preclean \
#  --no-multiarch \
#  --with-keep.source \
#  --install-tests \
#  --clean \
#  --no-test-load

#   --library $TMPDIR/Rlib \