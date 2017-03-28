
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


# # 7 File
function fd1(){ find "$1" -maxdepth 1 -mindepth 1 ; }
function fdg(){ sudo find "$1" | grep -i "$2" ; }
alias mvt='d=`date +%F_%T` ; mkdir ~/trash/$d -p ;sudo mv -f -t ~/trash/$d' # move to trash 切忌用单引号
alias cpr='cp -r'

# # 7 File content
function seda(){ sed -En ":a;$!{N;ba};s|.*("$2").*|\1|p" "$1" ; } # sed all lines
