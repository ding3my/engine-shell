
function cdf(){
#echo $#
regexp=".*"
for i in $@; do
    regexp=${regexp}"$i"".*"
done
#echo "find \"$path_to_find\" -type d | grep -P \"$regexp\" | head -n1" # test
cmd="cd '`find \"$path_to_find\" -type d | grep -P \"$regexp\" | head -n1`'"
echo "$cmd"
eval "$cmd"
}


alias em='emacs -nw'

# # lib
function gen_re_la(){ # generate regex lookahead
    re=''
    for v in $@ ; do
       re="${re}""(?=.*$v)"
    done
    echo $re
}

# # 7 File (path, size etc)
alias lsa='ls -ahl' # ls all files including .*
alias dua='du -ah --max-depth=1' # du each file's size including .* file
function fd1(){ find "$1" -maxdepth 1 -mindepth 1 ; }
function fdg(){ sudo find "$1" | grep -i "$2" ; }
alias mvt='d=`date +%F_%T` ; mkdir ~/trash/$d -p ;sudo mv -f -t ~/trash/$d' # move to trash 切忌用单引号
alias cpr='cp -r'

# # 7 File line
alias grepi='grep -i'
function grp(){
    re=$(gen_re_la ${@:2})
    cmd="grep -P '$re' '$1'"
    echo $cmd ; eval "$cmd" ; 

}

# # 7 File lines
function prl(){
    cmd="perl -0777 -pe 's|(.*)(${@:2})(.*)|\2|s' '$1'"
    echo $cmd ;
    eval "$cmd" ; 
}

# # 8 File sys
alias dfa='df -ahT'
# # 8 Partitions
alias fdsk='sudo fdisk -l'

# # 9 Archive
alias tart='tar -tvf' # tar -tvf w3-4.0.49.tar
alias tarc='tar -cvf' # tar -cvf d.tar d
alias tarx='tar -xvf' # tar -xvf syncthing-linux-amd64-v0.14.25.tar.gz


# # 14 users
alias user='cat /etc/passwd'


# # 14 passwords
alias password='cat /etc/shadow'

# # 14 groups
alias group='cat /etc/group'

# # 16 at job
alias atr='at -l' # at retrieve
# # 16 cron job
alias crontabr='crontab -l'

# # 17 Processes job
alias jobsr='jobs -l' # fg %2 means 

# # 17 Processes
alias psr='ps aux'
alias psrg='ps aux| grep -i'

# # 17 Network connections
alias netstatr='netstat -a'


# # 23 Source rpm
alias rpmr='rpm -qa'
alias rpmrg='rpm -qa| grep -i'

# # 23 Source dnf
alias dnfr='dnf list'
alias dnfrg='dnf list| grep -i'
alias dnfc='sudo dnf install'
alias dnfd='sudo dnf remove'
