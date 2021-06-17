Supernode website
===================

This is the source for [supernode.berkeley.edu](https://supernode.berkeley.edu).
It uses [Jekyll](https://jekyllrb.com/).

This means you write Markdown, HTML, or Textile here,
and compile it to static HTML for deployment.

Building
--------
Run ``make`` to build the site into *_site*. This requires a local *jekyll*.

Deploying
---------
Run ``make deploy`` to deploy the site to the web root. This requires a local *rsync*.

The website is deployed as the *deploy* user. You must be able to log in as *deploy@* in order to deploy the website.
