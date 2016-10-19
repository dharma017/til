# Restore deleted file from remote repository

If you haven't committed the deletion, just check out the files from your current commit:

    git checkout HEAD <path>

If you have committed the deletion, you need to check out the files from a commit that has them.
Presumably it would be the previous commit:

    git checkout HEAD^ <path>
    
but if it's n commits ago, use `HEAD~n`, or simply fire up `gitk`, find the `SHA1` of the appropriate commit, and paste it in.
