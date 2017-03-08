# engine-shell
# Installation

```
git clone git@github.com:ding3my/engine-shell.git ~/.engine-shell.d

grep '^"engine-shell$' ~/.bashrc || cat << end >>  ~/.bashrc

#engine-shell
source ~/.engine-shell.d/engine-shell.sh
#engine-shell
end
```

# Updating

```
cd ~/.engine-shell.d
git pull
cd -
```

