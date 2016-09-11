# Go to the declaration (of a class, method, function, variable, etc)

You can try `gd`, it goes to local declaration,
for more powerful 'go to definition', you might want to try `tags`

Create tag database using ctags in Vim ex mode
```
!ctags -R .
```

With that, search using Vim's tag functionality like `<C-]>` and `:tag`.
The easiest way is to use `g ctrl-]` instead of just `ctrl-]`. 
If there is only one match, it will take you there. If there are multiple matches,
it will list them all, letting you choose the one you want, just like `:tselect`. The best of both worlds. :)

We can use `tn` and `tp` to jump to the various matching tags.

type `:tn` to go to the next.
If you typed `:tn` too many times you can type `:tp` to return to the previous one.

Help: tag-matchlist, :tj, :tselect, g], v_g], :stselect, Ctrl-W_g]

Press `Ctrl-t` to return after a tag jump




