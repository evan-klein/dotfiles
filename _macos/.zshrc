# Put this file in ~/.zshrc, then start a new shell session

# Set the default text editor
export EDITOR=nano

# Style
# To get a list of all available colors, run:
# for i in {1..256}; do print -P "%F{$i}Color: $i"; done;
# This will only work in Z shell
style_username='%{%F{153}%}'
style_at='%{%F{195}%}'
style_host='%{%F{75}%}'
style_directory='%{%F{222}%}'
style_reset='%{%f%}'
PROMPT="$style_username%n$style_reset$style_at@$style_reset$style_host%m$style_reset $style_directory%~$style_reset "

# Shortcuts
alias resetperms='chmod -R 755 ~/git/ && echo "✅"'
alias beep='echo -e "\a"'
alias beep3='echo -e "\a" && sleep 0.2 && echo -e "\a" && sleep 0.2 && echo -e "\a"'
alias squashlater='git commit -m "Progress commit; squash later" && echo "✅"'
alias s='cd ..'

# Add to PATH
export PATH=$PATH:/usr/local/bin:/opt/homebrew/opt/php/bin:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
