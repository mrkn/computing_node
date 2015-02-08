# See the following documentation for the detail information.
# http://docs.nvidia.com/cuda/cuda-getting-started-guide-for-linux/index.html#ubuntu-installation

include_recipe "./curl.rb"

name = 'cuda-repo-ubuntu1404'
version = '6.5-14'
sha256sum = 'a99db68f27d66e1bf0adaf3e88cd6ad4179d5c27ac0171b685d0d17681703679'

nvidia_url = 'http://developer.download.nvidia.com/compute/cuda/repos'
filename = "#{name}_#{version}_amd64.deb"
package_url = File.join(nvidia_url, 'ubuntu1404/x86_64', filename)
destination_path = File.join('/tmp', filename)

execute "download-cuda_repo-package" do
  command "curl -o #{destination_path} #{package_url}"
  not_if "echo '#{sha256sum} #{destination_path}' | sha256sum --status -c - 2>/dev/null"
end

execute "install-cuda_repo-package" do
  command "dpkg -i #{destination_path}"
  not_if "dpkg-query -f '${Status} ${Version}' -W #{name} | grep -E '^(install|hold) ok installed #{version}$'"
  notifies :run, 'execute[apt-get update]', :immediately
end
