# See the following documentation for the detail information.
# http://docs.nvidia.com/cuda/cuda-getting-started-guide-for-linux/index.html#ubuntu-installation

include_recipe "./curl.rb"

include_recipe "./build_essential.rb"

cuda_repos_root = 'http://developer.download.nvidia.com/compute/cuda/repos'
cuda_repo_ubuntu1404 = 'cuda-repo-ubuntu1404_6.5-14_amd64.deb'
cuda_repo_ubuntu1404_url = File.join(cuda_repos_root, 'ubuntu1404/x86_64', cuda_repo_ubuntu1404)

execute "download-cuda_repo-package" do
  command "curl -o /tmp/#{cuda_repo_ubuntu1404} #{cuda_repo_ubuntu1404_url}"
end

execute "install-cuda_repo-package" do
  command "dpkg -i /tmp/#{cuda_repo_ubuntu1404}"
end

execute "apt-get-update-cuda_repo" do
  command "apt-get update -q -y"
end

package "cuda-toolkit-6-5" do
  action :install
end
