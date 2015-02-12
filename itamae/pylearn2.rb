include_recipe 'pylearn2_deps.rb'

execute 'install pylearn2' do
  command "sh /vagrant/itamae/install_pylearn2.sh"
end
