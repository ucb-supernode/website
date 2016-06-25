Supernode website
===================

This is the source for [supernode.berkeley.edu](https://supernode.berkeley.edu).
It uses [Jekyll](https://jekyllrb.com/).

This means you write Markdown, HTML, or Textile here,
and compile it to static HTML for deployment.

Currently the site is manually deployed. This should work:
```
scp -r _site/. deploy@supernode.berkeley.edu:/var/www/site/
```

(`rsync` based solution coming soon)
