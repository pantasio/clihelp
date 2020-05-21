hugo version
hugo new site <name-of-site>

hugo new post/first-post.md
hugo server

git init
git submodule add <url> themes/<name-theme>

git submodule add https://github.com/gkmngrgn/hugo-alageek-theme themes/alageek

cp themes/<name-theme>/exampleSite/* . -r

cp themes/alageek/exampleSite/* . -r

hugo undraft <url-post.md>

"""""""""""""
" make hugo generate HTML
change config.toml
publishDir = "docs"
run hugo
"""""""""""""

### Creating & Organizing Content
'''bash
hugo new content/dir1/name-of-blog.md

hugo new content/dir/_index.md

'''

### Static Site Generator
---
title: "this is title"
date: 
draft: true
author: "pantasio"
language: "English"
tags: ["tag1", "tag2",]
categories: ["cat1"]
---

### Archetypes

Create own /dir1 template: archetypes/dir1.md 

---
title: "this is title"
date: 
draft: true
author: "vnhomelab"
language: "VietNam"
---




### Shortcodes

youtube video.
{{< youtube 2xkNJL4gJ9E >}}

### Taxonomies


### variable hugo

{{.Content}}


{{ range .Pages }}
    {{.Title}} <br>
    {{.URL}} <br>
{{end}}















