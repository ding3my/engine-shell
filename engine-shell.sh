source ./config.sh
source ./git.sh

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
