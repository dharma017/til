# A better git log

It's simple. Just type in:

```
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```

I guess that's a bit too long, eh? Let's just make an alias. Copy and paste the line below on your terminal:

```
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

And every time you need to see your log, just type in

```
git lg
```

Or, if you want to see the lines that changed

```
git lg -p
```
