---
layout: page.lax
title: Documentation
image: /img/cleanluax.webp
description: How to use Luax Lua Static Site Generator
toc: true
---

## 🚀 LUAX SSG

**Static Site Generator built with Lua**

LUAX is a lightweight, fast, and modern static site generator built with Lua. It uses the LAX template engine to generate static websites from Markdown content with YAML frontmatter.

## Support & Donation

If you find LUAX helpful, consider supporting us:

- [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
- [Buy Me a Coffee](https://creativitaz.gumroad.com/coffee)
- [GitHub](https://github.com/sponsors/mesinkasir)

Your support helps us maintain and improve LUAX! ❤

## ✨ Features

- ⚡ **Fast** - Built with Lua for speed
- 📦 **Lightweight** - Minimal dependencies
- 🔧 **Easy** - Simple template system with LAX
- 📝 **Markdown** - Write content in Markdown with YAML frontmatter
- 🏷 **Tags** - Automatic tag pages
- 📄 **Pagination** - Blog posts pagination
- 📑 **TOC** - Nested Table of Contents support[^1]
- 📝 **Footnotes** - Footnotes support[^2]
- 📱 **Responsive** - Bootstrap 5 ready
- 🔍 **SEO** - Open Graph, JSON-LD, sitemap, RSS feed
- 📂 **Assets** - Automatic public assets copying

[^1]: Enable with `toc: true` in frontmatter - nested H2 > H3 > H4
[^2]: Use `[^1]` syntax - auto render with backlink

## 📦 Installation

### Prerequisites

- [Download Lua](https://www.lua.org/download.html) (version 5.5 or higher)
- Python or PHP (for development server)

### Clone & Setup

```bash
git clone https://github.com/mesinkasir/luax.git
cd luax
```

### File Structure

```
luax/
├── build.lua # Build engine
├── start.lua # Development server
├── lax.lua # LAX template engine
├── yaml.lua # YAML parser
├── metadata.yaml # Site configuration
├── luax.bat # Windows command line
├── luax.sh # Linux/Mac command line
├── src/
│ ├── posts/ # Blog posts (.md)
│ └── pages/ # Static pages (.md)
├── templates/
│ ├── layouts/ # Layout templates (.lax)
│ └── partials/ # Partial templates (.lax)
├── public/ # Static assets (css, img, js)
└── dist/ # Generated output
```

## 🚀 Usage

### Windows

```bash
luax build # Build static site
luax start # Start development server
```

### Linux / Mac

```bash
chmod +x luax.sh
./luax.sh build # Build static site
./luax.sh start # Start development server
```

### Development Server

After running `luax start`, open your browser to:

```
http://localhost:8080
```

## 📝 Content Management

### Create a Blog Post

Create a new `.md` file in `src/posts/`:

```yaml
---
title: My First Post
date: 2024-01-01
tags: lua, tutorial, web
author: LUAX Team
image: /img/cover.webp
excerpt: This is my first blog post
description: Your description here
---
```

### Create a Page

Create a new `.md` file in `src/pages/`:

```yaml
---
title: About Me
description: Learn more about me
image: /img/myimage.png
layout: page.lax
toc: true
---
```

## 🎨 Templates

LUAX uses the **LAX template engine** with `.lax` files.

LAX = Lua AXcora

### Basic Template

```lax
@ layout(default)

< main>
  < h1> @ title< /h1>
  < p> @ content< /p>
< /main>
```

### Loops and Conditions

```lax
@ for posts
  < h2> @ title< /h2>
  < p> @ excerpt< /p>
@end

@ if author
  < p>By @ author < /p>
@ end
```

### Partials

```lax
@ include(header)
@ include(footer)
```

### Layouts

```lax
@ layout(default)

< main>
  @ content
< /main>
```

## Site Configuration

Edit `metadata.yaml` to configure your site:

```yaml
title: LUAX SSG
description: Static Site Generator built with Lua
url: http://localhost:8080
image: /img/logo.webp
favicon: /img/favicon.webp
twitter_user: @luaxssg
```

## Templating Variables - LUAX V1.2 LAX Engine

Complete list of variables available in LUAX V1.2 templates.

### Page Variables

Current page/post variables:

| Variable | Description | Example |
|----------|-------------|---------|
| `@ title` | Page title from frontmatter | `LUAX SSG V1.2` |
| `@ description` | Page description/excerpt | `Fast static site generator` |
| `@ content` | Rendered HTML content | `< p>Content...< /p>` |
| `@ date` | Page date | `2024-01-01` |
| `@ current_url` | Current page URL (like `{ {page.url} }` in Jekyll) | `/v1.2/docs/` |
| `@ url` | Alias for `@current_url` inside loops | `/posts/my-post/` |
| `@ slug` | Page slug | `about` |
| `@ author` | Page author | `LUAX Team` |
| `@ image` | Page image | `/img/cover.webp` |
| `@ layout` | Page layout | `index.lax` |
| `@ collection` | Collection name (string) | `posts`, `v0.3`, `v1.2`, `root` |

### Site / Metadata Variables

From `data/metadata.yaml`:

| Variable | Description |
|----------|-------------|
| `@ metadata.title` | Site title |
| `@ metadata.description` | Site description |
| `@ metadata.url` | Site base URL |
| `@ metadata.author` | Site author |
| `@ metadata.image` | Default site image |
| `@ site.title` | Alias for `@ metadata.title` |
| `@ site.url` | Alias for `@ metadata.url` |

**Usage:**

```lax
< title>@ title< /title>
< title>@ metadata.title< /title>
< link rel="canonical" href="@metadata.url@current_url">
```

### TOC

Table of Content support - Nested H2 > H3 > H4.

Usage in frontmatter:

```yaml
---
toc: true
---
```

In layout `page.lax`:

```lax
@ if toc_html
  @ toc_html
@ end
```

### Footer Notes

Footer Notes Support in V1.2:

```md
this is footnote[ ^1].

[ ^1]: footnote here
```

### Full URL Construction

Jekyll `{ { page.url } }` equivalent in V1.2:

```lax
@ current_url -> /v1.2/docs/
@ metadata.url@current_url -> https://luax.axcora.com/v1.2/docs/
```

### Inside Loops

**Posts loop:**

```lax
@ for collections.posts limit=3
  < a href="@ url">@ title< /a>
  < time>@ date< /time>
  < p>@ excerpt< /p>
@ end
```

**Collections:**

```lax
@ for collections.v0.3
  < a href="@ url">@ title< /a>
@ end

@ for collections.v1.2
  < a href="@ url">@ title< /a>
@ end
```

#### Fallback Pattern

V1.2 LAX does NOT support `or` inline, use `@if`:

```lax
@ if title
  < title>@ title< /title>
@ else
  < title>@ metadata.title< /title>
@ end

@ if og_image
  <meta property="og:image" content="@ metadata.url@ og_image">
@else
  @ if image
    < meta property="og:image" content="@ metadata.url @ image">
  @ else
    < meta property="og:image" content="@ metadata.url @ metadata.image">
  @ end
@ end
```

### SEO Variables

| Variable | Fallback Chain |
|----------|----------------|
| `@og_title` | `@og_title` > `@title` > `@metadata.title` |
| `@og_description` | `@og_description` > `@description` > `@metadata.description` |
| `@og_image` | `@og_image` > `@image` > `@metadata.image` |
| `@og_type` | `website` / `article` |
| `@current_url` | For `og:url` and canonical |

### Navigation Variables

```lax
@base_url ->../
@collection -> current collection name
@collections -> all collections object
@prev_post.url -> previous post URL
@next_post.url -> next post URL
```

### Complete Head Example V1.2

```lax
@ if title
< title>@ title< /title>
@ else
< title>@ metadata.title < /title>
@ end

< meta property="og:url" content="@ metadata.url @ current_url">
< link rel="canonical" href="@ metadata.url @ current_url">
```

### Summary

| Category | Variables |
|----------|-----------|
| **Page** | `@title`, `@description`, `@content`, `@date`, `@current_url`, `@url`, `@slug`, `@author`, `@image`, `@layout`, `@collection` |
| **Site** | `@metadata.*`, `@site.*` |
| **Navigation** | `@base_url`, `@collections`, `@prev_post.url`, `@next_post.url` |
| **SEO** | `@og_title`, `@og_description`, `@og_image`, `@og_type` |

## 📦 Building

```bash
luax build
```

The site will be generated in the `dist/` folder.

## 🛠 Development Server

```bash
luax start
```

The server will start at `http://localhost:8080`.

### Optional: Live Reload

**Browser-Sync:**

```bash
npm install -g browser-sync
browser-sync start --server dist --port 8080 --files dist/**/*
```

**Python Livereload:**

```bash
pip install livereload
livereload dist --port 8080
```

## 📄 Generated Files

- **`dist/`** - Static site output
- **`sitemap.xml`** - SEO sitemap
- **`feed.xml`** - RSS feed
- **`robots.txt`** - Robots configuration
- **`humans.txt`** - Humans information
- **`tags/`** - Automatic tag pages
- **`blog/page/`** - Paginated blog pages

## 🚀 Deployment

### GitHub Pages

Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v4
    - name: Setup Lua
      uses: leafo/gh-actions-lua@v10
      with:
        luaVersion: "5.4"
    - name: Build Site
      run: lua build.lua
    - name: Upload artifact
      uses: actions/upload-pages-artifact@v3
      with:
        path:./dist
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
    - name: Deploy
      uses: actions/deploy-pages@v4
```

### Netlify

```toml
[build]
  command = "lua build.lua"
  publish = "dist"
```

### Vercel

```json
{
  "buildCommand": "lua build.lua",
  "outputDirectory": "dist"
}
```

### Cloudflare Pages

Build command: `lua build.lua`
Output directory: `dist`

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

MIT License - see the LICENSE file for details.

## Credits

- Built with [Lua](https://www.lua.org/)
- Template engine: LAX
- Bootstrap for styling

## Support & Donation

If you find LUAX helpful, consider supporting us:

- [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
- [Buy Me a Coffee](https://creativitaz.gumroad.com/coffee)
- [GitHub](https://github.com/sponsors/mesinkasir)

Your support helps us maintain and improve LUAX! ❤

**🚀 Built with ❤ using LUAX V1.2**
