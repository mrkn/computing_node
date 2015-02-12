. /etc/profile.d/cuda.sh
. /etc/profile.d/caffe.sh

caffe_srcdir=$(dirname $caffe_prefix)
caffe_url='https://github.com/BVLC/caffe.git'

rm -rf $caffe_srcdir
git clone $caffe_url $caffe_srcdir
cd $caffe_srcdir

sed \
  -e 's,^# USE_CUDNN := .*$,# USE_CUDNN := 1,' \
  -e "s,^# CPU_ONLY := .*$,CPU_ONLY := ${CPU_ONLY:-0}," \
  -e 's,BLAS := .*$,BLAS := open,' \
  -e "s,CUDA_DIR := .*$,CUDA_DIR=${cuda_prefix}," \
  Makefile.config.example \
  > Makefile.config

make clean
make -j 8 all
make test
make runtest
make distribute
