execute "apt-get-update" do
  command "apt-get update -q -y"
end

execute "apt-get-upgrade" do
  command "apt-get upgrade -y"
end

package "lv" do
  action :install
end

package "git" do
  action :install
end

package "zsh" do
  action :install
end

package "tmux" do
  action :install
end

include_recipe "./cuda.rb"
