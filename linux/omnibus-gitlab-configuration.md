# Omnibus GitLab

## Omnibus installations

[https://about.gitlab.com/downloads/](https://about.gitlab.com/downloads/)

## Configuring the external URL for GitLab

In order for GitLab to display correct repository clone links to your users it needs to know the URL under which it is reached by your users, e.g. http://gitlab.example.com. Add or edit the following line in /etc/gitlab/gitlab.rb:

    external_url "http://gitlab.example.com"
    
Run `sudo gitlab-ctl reconfigure` for the change to take effect.

## Omnibus GitLab services

    sudo gitlab-ctl restart
    sudo gitlab-ctl status
    sudo gitlab-ctl reconfigure
  
Reconfiguring GitLab should occur in the event that something in its configuration (/etc/gitlab/gitlab.rb) has changed.

## Gitlab Issues

#### GitLab can't load assets

Run `gitlab-rake cache:clear`

Run `gitlab-ctl restart`

Clear your browser cache

#### gitlab-rake assets:precompile fails with 'Permission denied'

    sudo NO_PRIVILEGE_DROP=true USE_DB=false gitlab-rake assets:clean assets:precompile

user and path might be different if you changed the defaults of

user['username'], user['group'] and gitlab_rails['dir'] in gitlab.rb
    
    sudo chown -R git:git /var/opt/gitlab/gitlab-rails/tmp/cache
    
## Reference

[https://docs.gitlab.com/omnibus/](https://docs.gitlab.com/omnibus/)
 
