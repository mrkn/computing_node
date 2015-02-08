execute "apt-get update" do
  command "apt-get update -q -y"
end

execute "apt-get upgrade" do
  command "apt-get upgrade -y"
end

package "lv"
package "git"
package "zsh"
package "tmux"
