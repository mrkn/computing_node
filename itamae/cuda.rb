# See the following documentation for the detail information.
# http://docs.nvidia.com/cuda/cuda-getting-started-guide-for-linux/index.html#ubuntu-installation

include_recipe "./cuda_repo.rb"
include_recipe "./build_essential.rb"

package "cuda-toolkit-6-5" do
  version '6.5-14'
end
