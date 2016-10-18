# Welcome to the Git Flow

![four git stages](https://about.gitlab.com/images/git_flow/four_stages.png)

This tutorial uses [Git-flow branching model](http://nvie.com/posts/a-successful-git-branching-model/).

![gitflow](https://about.gitlab.com/images/git_flow/gitdashflow.png)

## Source
- [Download Video](http://video.build-podcast.com/059-git-flow.mp4)
- Sample code: [Github](https://github.com/relizont/git-advanced)
- [The Computer Revolution Timeline](https://en.wikibooks.org/wiki/The_Computer_Revolution/Timeline)

## Git flow Information

- [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
- [Git flow Ebook](https://leanpub.com/git-flow/read)
- [Git flow cheatsheet](http://danielkummer.github.io/git-flow-cheatsheet/)

## Install Git flow (updated fork)

[https://github.com/petervanderdoes/gitflow-avh](https://github.com/petervanderdoes/gitflow-avh)

[https://github.com/petervanderdoes/gitflow-avh/wiki/Installation](https://github.com/petervanderdoes/gitflow-avh/wiki/Installation)

try out the command in the terminal
`git flow version git flow`

## Start a normal Git Repository initialization
``` 
 mkdir git-advanced
 cd git-advanced
 git init
 touch timeline.md
 git add . && git commit -m "Initial commit" 
 vim timeline.md
 git add . && git commit -m "19th century timeline added"  
```

Push an existing repository from the command line
```
git remote add origin git@github.com:relizont/git-advanced.git
git push -u origin master
```

## Git flow
```
git flow init
git flow feature start twenty-century
vim timeline.md
git add . && git commit -m "20th century timeline added"
```

Create new feature branch `thirty-century` from `develop` branch
```
git flow feature start thirty-century
vim timeline.md
git add . && git commit -m "30th century timeline added"
```

Finish feature branch `thirty-century`
```
git flow feature finish thirty-century
```

Create new feature branch `forty-century` from `develop` branch
```
git flow feature start forty-century
vim timeline.md
git add . && git commit -m "40th century timeline addded"
git flow feature publish forty-century
git flow feature finish forty-century
```

Getting a published feature `forty-century`
```
git flow feature pull origin forty-century
vim timeline.md
git add . && git commit -m "finish timeline details for forty century"
git push
git flow feature finish forty-century
```

Create release branch from develop using [semantic versioning](http://semver.org/)
```
git flow release start 0.1.0
git flow release publish 0.1.0
git flow release finish 0.1.0
git push origin master
git push origin develop
git push --tags
```

Create hotfix branch from master using [semantic versioning](http://semver.org/)
```
git flow hotfix start 0.1.1
git flow hotfix publish 0.1.1
git flow hotfix finish 0.1.1
git push origin master
git push origin develop
git push --tags
```

## More Resources on Git Flow
- [Comparing Workflows](https://www.atlassian.com/git/tutorials/comparing-workflows/#!workflow-gitflow)
- [GitLab Flow](https://about.gitlab.com/2014/09/29/gitlab-flow/)
- [Pros and Cons](http://stackoverflow.com/questions/18188492/what-are-the-pros-and-cons-of-git-flow-vs-github-flow)
- [Source Tree and Git flow](https://blog.sourcetreeapp.com/2012/08/01/smart-branching-with-sourcetree-and-git-flow/)
- [SmartGit Flow](https://www.syntevo.com/doc/display/SG/Git-Flow)

## Extras
- [A better git log](https://coderwall.com/p/euwpig/a-better-git-log)
- [Sourcetreeapp](https://www.sourcetreeapp.com/)
- [Chrome Markdown Viewer](https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk)
