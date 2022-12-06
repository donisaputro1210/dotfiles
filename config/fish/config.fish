if status is-interactive
#Function
alias cfh="cd /home/doni/.config/fish/"
alias editfish="gedit /home/doni/.config/fish/config.fish"

#PATH
set -gx PATH $PATH ~/.local/share/coursier/bin
set -gx PATH $PATH /usr/lib/jvm/java-19-openjdk-19.0.1.0.10-2.rolling.fc37.x86_64/bin/java
set -gx PATH $PATH ~/.local/share/spark-3.3.0-bin-hadoop3/bin/
set -gx PATH $PATH ~/.cargo/bin/
#STARSHIP
starship init fish | source

    # Commands to run in interactive sessions can go here
end
