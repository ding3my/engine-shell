# commit
git add . ; git commit -m1 ; # commit

# install
git clone ../engine-shell "$HOME/opt/engine-shell" ; # clone

# update
git -C "$HOME/opt/engine-shell" pull ; # pull

# config rc
rc_p="$HOME/.zshrc" # rc file path
sw_v="#s $(basename $PWD) $(date -d @$(git log -n1 --format="%at") +%Y%m%d%H%M)" # software version
sw_cv="$(grep "#s $(basename $PWD)" -i "$rc_p")"  # software current version
if [ "$sw_v" != "$sw_cv" ]; then 
cat<<EOF>>"${rc_p}"

#sw_v
source "$HOME/opt/engine-shell/engine-shell.sh"
#e
EOF
