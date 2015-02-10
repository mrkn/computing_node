include_recipe 'cuda.rb'
include_recipe 'opencv.rb'

# BLAS
package 'libopenblas-dev'

# Python
package 'python-dev'
package 'cython'
package 'python-numpy'
package 'python-scipy'
package 'python-skimage'
package 'python-sklearn'
package 'python-matplotlib'
package 'ipython'
package 'python-h5py'
package 'python-leveldb'
package 'python-networkx'
package 'python-nose'
package 'python-pandas'
package 'python-dateutil'
package 'python-protobuf'
package 'python-gflags'
package 'python-yaml'

# Boost C++
package 'libboost1.55-all-dev'

# Misc
package 'libprotobuf-dev'
package 'libleveldb-dev'
package 'libsnappy-dev'
package 'libhdf5-serial-dev'
package 'libgoogle-glog-dev'
package 'libgflags-dev'
package 'liblmdb-dev'
package 'protobuf-compiler'

# Build Requires
package 'git-core'
