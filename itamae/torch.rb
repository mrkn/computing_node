# See http://torch.ch/docs/getting-started.html

package 'ipython'

include_recipe 'torch_deps.rb'

execute 'install torch' do
  command 'sh /vagrant/itamae/install_torch.sh'
  only_if 'test -d /usr/local/torch'
end

remote_file '/etc/profile.d/torch.sh' do
  source 'files/etc/profile.d/torch.sh'
  mode '644'
end
