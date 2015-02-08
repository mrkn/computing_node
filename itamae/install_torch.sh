PATH=/usr/local/cuda-6.5/bin:$PATH
LD_LIBRARY_PATH=/usr/local/cuda-6.5/lib64:$LD_LIBRARY_PATH

git clone https://github.com/torch/distro.git /usr/local/torch --recursive
cd /usr/local/torch
./install.sh -b
