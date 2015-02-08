# See http://torch.ch/docs/getting-started.html

include_recipe 'torch_deps.rb'

execute 'install torch' do
  command 'sh /vagrant/itamae/install_torch.sh'
end
