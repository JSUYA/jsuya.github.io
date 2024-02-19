


txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White


gr (){
echo "git reset --hard origin/$1"
git reset --hard origin/$1

}
#bind 'set-enable-bracketed-paste off'
#set nopaste

export PROMPT_COMMAND="printf '\e[?2004l'"
set PROMPT_COMMAND

parse_git_branch() {

# To disable the bracketed paste mode
# (~0 1~ issue)
#printf "\e[?2004l"
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}    
#export PS1="\[\033[32m\]\w\[\033[33m\] $(parse_git_branch)\[\033[00m\] \\ \[\e[34m\]\t \[\e[00m\]$ "

color_green="\[\e[32m\]"
color_yellow="\[\e[33m\]"
color_wht="\[\e[00m\]"
color_wht2="\[\e[34m\]"
custom_path="$color_green\w$color_yellow\$(parse_git_branch) $color_wht2\t$color_wht \$ "
export PS1="$custom_path"



function ni() {
 
   #echo -e "\x1b[1m\x1b[7m \x1b[33m sudo ninja -C build install \x1b[0m"
   echo -e "\x1b[1m\x1b[33m                _               _        _                ____   _           _ _     _   _           _        _ _ \x1b[0m"
   echo -e "\x1b[1m\x1b[33m  ___ _   _  __| | ___    _ __ (_)_ __  (_) __ _         / ___| | |__  _   _(_) | __| | (_)_ __  ___| |_ __ _| | | \x1b[0m"
   echo -e "\x1b[1m\x1b[33m / __| | | |/ _\` |/ _ \  | '_ \| | '_ \ | |/ _\` |  _____| |     | '_ \| | | | | |/ _\` | | | '_ \/ __| __/ _\` | | | \x1b[0m"
   echo -e "\x1b[1m\x1b[33m \__ \ |_| | (_| | (_) | | | | | | | | || | (_| | |_____| |___  | |_) | |_| | | | (_| | | | | | \__ \ || (_| | | | \x1b[0m"
   echo -e "\x1b[1m\x1b[33m |___/\__,_|\__,_|\___/  |_| |_|_|_| |_|/ |\__,_|        \____| |_.__/ \__,_|_|_|\__,_| |_|_| |_|___/\__\__,_|_|_|\x1b[0m"
   echo -e "\x1b[1m\x1b[33m                                      |__/                      \x1b[0m"
   date +"%c"
   echo -e "\x1b[1m\x1b[33m -----------------------------------------------------------------------------------------------------------------  \x1b[0m"

   sudo ninja -C build install
}



function mni() {
   echo -e "sudo rm -rf ./ build ++ ${RED}M${NC}eson build ++ sudo ${RED}N${NC}inja -C build ${RED}I${NC}nstall"

echo -e "\x1b[1m\x1b[33m                               __        ___           _ _     _    ___    ___                                       _           _ _     _  \x1b[0m"
echo -e "\x1b[1m\x1b[33m  _ __ _ __ ___          _ __ / _|      / / |__  _   _(_) | __| |  ( _ )  ( _ )    _ __ ___   ___  ___  ___  _ __   | |__  _   _(_) | __| | \x1b[0m"
echo -e "\x1b[1m\x1b[33m | '__| '_ \` _ \   _____| '__| |_      / /| '_ \| | | | | |/ _\` |  / _ \/\/ _ \/\ | '_ \` _ \ / _ \/ __|/ _ \| '_ \  | '_ \| | | | | |/ _\` | \x1b[0m"
echo -e "\x1b[1m\x1b[33m | |  | | | | | | |_____| |  |  _|  _ / / | |_) | |_| | | | (_| | | (_>  < (_>  < | | | | | |  __/\__ \ (_) | | | | | |_) | |_| | | | (_| | \x1b[0m"
echo -e "\x1b[1m\x1b[33m |_|  |_| |_| |_|       |_|  |_|   (_)_/  |_.__/ \__,_|_|_|\__,_|  \___/\/\___/\/ |_| |_| |_|\___||___/\___/|_| |_| |_.__/ \__,_|_|_|\__,_|\x1b[0m"
echo -e "\x1b[1m\x1b[33m                                                                  \x1b[0m"

   sudo rm -rf ./build
   meson . build
   ni
}

