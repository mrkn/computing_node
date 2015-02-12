include_recipe 'theano_deps.rb'

execute 'install Theano' do
  command 'pip install Theano'
end
