---
layout: page.lax
title: Documentation v0.3
image: /img/cleanluax.webp
description: How to use LUAX v0.3 - Lua Static Site Generator with TOC and Footnotes
toc: true
---

## 🚀 LUAX v0.3

**Static Site Generator built with Lua**

LUAX v0.3 is a lightweight, fast, and modern static site generator built with Lua. It uses the LAX template engine to generate static websites from Markdown content with YAML frontmatter.

## ✨ Features v0.3

- ⚡ **Fast** - Built with Lua for speed
- 📦 **Lightweight** - Minimal dependencies  
- 🔧 **Easy** - Simple LAX template system
- 📝 **Markdown** - YAML frontmatter + Markdown
- 🏷 **Tags** - Automatic tag pages
- 📄 **Pagination** - Blog pagination
- 📑 **TOC** - Nested Table of Contents[^1]
- 📝 **Footnotes** - GitHub style footnotes[^2]
- 📱 **Responsive** - Bootstrap 5 ready
- 🔍 **SEO** - OG, JSON-LD, sitemap, RSS

[^1]: New in v0.3 - auto nested h2 > h3 > h4
[^2]: New in v0.3 - [^1] style footnotes

## 📦 Installation v0.3

### Prerequisites

- Lua 5.5+
- Python or PHP for dev server

### Clone

```bash
git clone https://github.com/mesinkasir/luax.git
cd luax
```

## 📝 Content v0.3

### Create Post

```md
---
title: My Post
date: 2024-01-01
tags: lua, tutorial
---

Content...
```

### Create Page

```md
---
title: About
description: About page
layout: page.lax
toc: true
---

## About

Content...
```

## 🎨 Templating Variables v0.3

Complete variables for LAX engine v0.3.

### Page Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `@title` | Page title | `Docs v0.3` |
| `@description` | Page description | `Fast SSG` |
| `@content` | HTML content | `< p>...< /p>` |
| `@date` | Date | `2024-01-01` |
| `@current_url` | Current URL[^3] | `/v0.3/docs/` |
| `@url` | Alias in loops | `/posts/my-post/` |
| `@slug` | Slug | `about` |
| `@image` | Image | `/img/cover.webp` |
| `@collection` | Collection | `v0.3`, `posts` |

[^3]: Fix v0.3 - use `@current_url` not `@og_url`

### Site Variables

| Variable | Description |
|----------|-------------|
| `@metadata.title` | Site title |
| `@metadata.description` | Site description |
| `@metadata.url` | Base URL `https://luax.axcora.com` |
| `@metadata.image` | Default image |

### URL Construction v0.3

| Usage | Result |
|-------|--------|
| `@current_url` | `/v0.3/docs/` |
| `@metadata.url@current_url` | `https://luax.axcora.com/v0.3/docs/` |

**Fix from old version:**

```lax
# OLD v0.2 - WRONG
@metadata.url@og_url

# NEW v0.3 - CORRECT
@metadata.url@current_url
```

### Complete Head v0.3

```lax
@ if title
< title>@ title< /title>
@ else
< title>@ metadata.title< /title>
@ end

@ if description
< meta name="description" content="@ description">
@ else
< meta name="description" content="@ metadata.description">
@end

< meta property="og:url" content="@ metadata.url @ current_url">
< link rel="canonical" href="@ metadata.url @ current_url">
< meta property="og:image" content="@ metadata.url @ image">
```

## 📂 File Structure v0.3

```
luax/
├── build.lua
├── lax.lua
├── src/
│   ├── v0.3/
│   │   └── docs.md
│   ├── posts/
│   └── pages/
├── templates/
└── dist/
```

## 🚀 Build v0.3

```bash
luax build
luax start
# http://localhost:8080
```

## Summary v0.3

| Category | Variables |
|----------|-----------|
| Page | `@title`, `@description`, `@content`, `@current_url`, `@url`, `@slug`, `@image` |
| Site | `@metadata.title`, `@metadata.url`, `@metadata.description` |
| New v0.3 | `toc: true`, `[^1]` footnotes, nested TOC, `@current_url` |

---

**Built with LUAX v0.3** - Support us via [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
