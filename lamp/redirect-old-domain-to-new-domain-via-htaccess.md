# Redirect an Old Domain to a New Domain in Apache server

* **Permanent redirect** — A permanent redirect, or 301 redirect, should be used anytime you permanently move a page, directory or website.
* **Temporary redirect** — A temporary redirect, or 302 redirect, should be used if you want to temporarily point a user to another location.

A 301 redirect, or permanent redirect, will ensure that both human visitors and search engines alike are automatically
and seamlessly pointed to the new domain.

    <IfModule mod_rewrite.c>
      RewriteEngine On
      RewriteCond %{HTTP_HOST} ^olddomain\.com$ [OR]
      RewriteCond %{HTTP_HOST} ^www\.olddomain\.com$
      RewriteRule (.*)$ http://www.newdomain.com/$1 [R=301,L]
    </IfModule>

Oh, and please be aware that your browser caches 301 redirects, so it is best to start with a 302 redirect when testing.
Always implement 302 (temporary) redirects first, then change them to 301 (permanent) redirects once you’ve tested them!


