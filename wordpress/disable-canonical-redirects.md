# Permalink Fix & Disable Canonical Redirects

## Disable wordpress Automatic URL Redirects

A page on any website, WordPress or not, can be accessed by multiple urls. 
For example, you can typically visit the home page of a WordPress web site by all of the following urls:

    http://example.com/
    http://www.example.com/
    http://example.com/index.php
    http://www.example.com/index.php

The problem with allowing all of these ways to access a single page is that it can potentially hurt your website’s overall search engine optimization (SEO). Having multiple urls for a page means that search engines could index duplicate copies. So WordPress fixes this problem by employing automatic redirects known as Canonical URL Redirection, which only enables one url per page.

To Turn Off Canonical URL Redirection

    remove_filter('template_redirect','redirect_canonical');

## Disable ONLY URL auto complete, not the whole canonical URL system

    function remove_redirect_guess_404_permalink( $redirect_url ) {
        if ( is_404() )
            return false;
        return $redirect_url;
    }

    add_filter( 'redirect_canonical', 'remove_redirect_guess_404_permalink' );
