include_recipe 'caffe_deps.rb'

remote_file '/etc/profile.d/caffe.sh' do
  source 'files/etc/profile.d/caffe.sh'
  mode '644'
end

execute 'install caffe' do
  command "env CPU_ONLY=#{node['caffe']['cpu_only'] ? 1 : 0} sh /vagrant/itamae/install_caffe.sh"
  not_if 'test -x /usr/local/caffe/bin/caffe.bin'
end
