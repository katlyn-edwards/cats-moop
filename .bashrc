# Hello, Katlyn! :D
echo 'Welcome Katlyn.'
echo ""`date "+%I:%M %p, %A %B %d, %Y"`.
echo ''

# Update window size after every command
# Update values of LINES/COLUMNS if needed
shopt -s checkwinsize

# History Length
HISTSIZE=150000
HISTFILESIZE=200000

# History Duplicates
HISTCONTROL=ignoredups:ignorespace

# Machine, X.
alias hibernate='sudo pm-hibernate' #hedgehogs unite
alias sleep='sudo pm-suspend'
alias reboot='sudo reboot' # :)
alias shutdown='sudo shutdown -h now'

# Color Everything
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias 'la'='ls -a --color=auto'
alias 'll'='ls -alF --color=auto'
alias 'l'='ls -cF --color=auto'
alias 'lt'='ls -lt --color=auto'

# Navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'

# Text Editors
alias vi=vim
alias edit='vim'
alias sublime='/opt/sublime_text/sublime_text'

# Browser
alias chrome='/opt/google/chrome/chrome'
alias browser=chrome
alias chromehome='/usr/bin/google-chrome --blacklist-accelerated-compositing'

# Tell Me
alias ip='wget -qO- icanhazip.com'
alias os='uname -srm'
alias now='date'

# SSH
alias attu='ssh katlyn@attu.cs.washington.edu'
alias attu1='ssh katlyn@attu1.cs.washington.edu'
alias attu2='ssh katlyn@attu2.cs.washington.edu'
alias attu3='ssh katlyn@attu3.cs.washington.edu'
alias attu4='ssh katlyn@attu4.cs.washington.edu'
alias attu32='ssh katlyn@attu32.cs.washington.edu'        #32bit
alias webster='ssh katlyn@nwebster.cs.washington.edu'
alias ripwebster='ssh katlyn@ripwebster.cs.washington.edu'
alias practiceit='ssh katlyn@practiceit.cs.washington.edu'
alias dante='ssh katlyn@dante.u.washington.edu'
alias dante11='ssh katlyn@dante11.u.washington.edu'
alias snowball='ssh katlyn@snowball.cs.washington.edu'    #002
alias detroit='ssh katlyn@detroit.cs.washington.edu'      #002
alias nashville='ssh katlyn@nashville.cs.washington.edu'  #002
alias montague='ssh katlyn@montague.cs.washington.edu'    #002
alias chumba='ssh katlyn@chumba.cs.washington.edu'        #002
alias acho='ssh katlyn@acho.cs.washington.edu'            #002
alias whidbey='ssh katlyn@whidbey.cs.washington.edu'      #006
alias quasi='ssh katlyn@quasi.cs.washington.edu'          #ACM
alias cubist='ssh katlyn@cubist.cs.washington.edu'        #403

# Fun
alias meow='echo meow'
alias woof='echo woof'
alias beep='echo -e "\a"'

# Packages Stuff
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'
alias yum='sudo yum'

# Echo
alias path='echo -e ${PATH//:/\\n}'

# The directory most traveled
alias currQtr='cd ~/Dropbox/University\ of\ Washington/Year\ 4\ \(2013\ -\ 2014\)/Winter\ Quarter/'
alias cse401='cd ~/Dropbox/University\ of\ Washington/Year\ 4\ \(2013\ -\ 2014\)/Winter\ Quarter/CSE\ 401'
alias cse461='cd ~/Dropbox/University\ of\ Washington/Year\ 4\ \(2013\ -\ 2014\)/Winter\ Quarter/CSE\ 461'

# Extraction
function extract()
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function setcount() {
  sort $1 | uniq -c | sort -n -r
}

#MongoDB
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin