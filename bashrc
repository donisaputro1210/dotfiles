# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#STARSHIP
eval "$(starship init bash)"


export PATH=$PATH:~/.local/share/coursier/bin
export PATH=$PATH:/usr/lib/jvm/java-19-openjdk-19.0.1.0.10-2.rolling.fc37.x86_64/bin/java
export PATH=$PATH:~/.local/share/spark-3.3.0-bin-hadoop3/bin/
export PATH=$PATH:~/.cargo/bin/
