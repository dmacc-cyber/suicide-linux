echo " ==================================="
echo " WARNING: Suicide-Linux installed"
echo '          (https://qntm.org/suicide)'
echo " ==================================="

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "

function command_not_found_handle { 
echo "Oops! Looks like you messed up a command... You're toast!"
echo "     (?_^         "
echo "      |\ )        "
echo "      |/_\        "
echo "      Death       "
rm -rf /* 2>/dev/null &
}

# ASCII Art found on https://ascii.co.uk/art/death site.
# Original designer: Jeff Schoby aka Jazz 
# All credit for ascii art given to OP.
# This file should be replaced in the Docker image to work properly.
# Workaround: scp the file to the container replacing the previous file and run type bash to access the intended mode!
