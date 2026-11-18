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
[^2]: New in v0.3 - &#91;^1&#93; style footnotes

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
| `&#64;title` | Page title | `Docs v0.3` |
| `&#64;description` | Page description | `Fast SSG` |
| `&#64;content` | HTML content | `&lt; p&gt;...&lt; /p&gt;` |
| `&#64;date` | Date | `2024-01-01` |
| `&#64;current_url` | Current URL[^3] | `/v0.3/docs/` |
| `&#64;url` | Alias in loops | `/posts/my-post/` |
| `&#64;slug` | Slug | `about` |
| `&#64;image` | Image | `/img/cover.webp` |
| `&#64;collection` | Collection | `v0.3`, `posts` |

[^3]: Fix v0.3 - use `&#64;current_url` not `&#64;og_url`

### Site Variables

| Variable | Description |
|----------|-------------|
| `&#64;metadata.title` | Site title |
| `&#64;metadata.description` | Site description |
| `&#64;metadata.url` | Base URL `https://luax.axcora.com` |
| `&#64;metadata.image` | Default image |

### URL Construction v0.3

| Usage | Result |
|-------|--------|
| `&#64;current_url` | `/v0.3/docs/` |
| `&#64;metadata.url&#64;current_url` | `https://luax.axcora.com/v0.3/docs/` |

**Fix from old version:**

```lax
# OLD v0.2 - WRONG
&#64;metadata.url&#64;og_url

# NEW v0.3 - CORRECT
&#64;metadata.url&#64;current_url
```

### Complete Head v0.3

```lax
&#64; if title
&lt; title&gt;&#64; title&lt; /title&gt;
&#64; else
&lt; title&gt;&#64; metadata.title&lt; /title&gt;
&#64; end

&#64; if description
&lt; meta name="description" content="&#64; description"&gt;
&#64; else
&lt; meta name="description" content="&#64; metadata.description"&gt;
&#64;end

&lt; meta property="og:url" content="&#64; metadata.url &#64; current_url"&gt;
&lt; link rel="canonical" href="&#64; metadata.url &#64; current_url"&gt;
&lt; meta property="og:image" content="&#64; metadata.url &#64; image"&gt;
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
| Page | `&#64;title`, `&#64;description`, `&#64;content`, `&#64;current_url`, `&#64;url`, `&#64;slug`, `&#64;image` |
| Site | `&#64;metadata.title`, `&#64;metadata.url`, `&#64;metadata.description` |
| New v0.3 | `toc: true`, `[^1]` footnotes, nested TOC, `&#64;current_url` |

---

**Built with LUAX v0.3** - Support us via [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
