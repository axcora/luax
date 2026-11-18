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
│   ├── posts/ # Blog posts (.md)
│   └── pages/ # Static pages (.md)
├── templates/
│   ├── layouts/ # Layout templates (.lax)
│   └── partials/ # Partial templates (.lax)
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
&#64;layout(default)

&lt;main&gt;
  &lt;h1&gt;&#64;title&lt;/h1&gt;
  &lt;p&gt;&#64;content&lt;/p&gt;
&lt;/main&gt;
```

### Loops and Conditions

```lax
&#64;for posts
  &lt;h2&gt;&#64;title&lt;/h2&gt;
  &lt;p&gt;&#64;excerpt&lt;/p&gt;
&#64;end

&#64;if author
  &lt;p&gt;By &#64;author&lt;/p&gt;
&#64;end
```

### Partials

```lax
&#64;include(header)
&#64;include(footer)
```

### Layouts

```lax
&#64;layout(default)

&lt;main&gt;
  &#64;content
&lt;/main&gt;
```

## Site Configuration

Edit `metadata.yaml` to configure your site:

```yaml
title: LUAX SSG
description: Static Site Generator built with Lua
url: http://localhost:8080
image: /img/logo.webp
favicon: /img/favicon.webp
twitter_user: &#64;luaxssg
```

## Templating Variables - LUAX V1.2 LAX Engine

Complete list of variables available in LUAX V1.2 templates.

### Page Variables

Current page/post variables:

| Variable | Description | Example |
|----------|-------------|---------|
| `&#64;title` | Page title from frontmatter | `LUAX SSG V1.2` |
| `&#64;description` | Page description/excerpt | `Fast static site generator` |
| `&#64;content` | Rendered HTML content | `&lt;p&gt;Content...&lt;/p&gt;` |
| `&#64;date` | Page date | `2024-01-01` |
| `&#64;current_url` | Current page URL (like `&#123;&#123;page.url&#125;&#125;` in Jekyll) | `/v1.2/docs/` |
| `&#64;url` | Alias for `&#64;current_url` inside loops | `/posts/my-post/` |
| `&#64;slug` | Page slug | `about` |
| `&#64;author` | Page author | `LUAX Team` |
| `&#64;image` | Page image | `/img/cover.webp` |
| `&#64;layout` | Page layout | `index.lax` |
| `&#64;collection` | Collection name (string) | `posts`, `v0.3`, `v1.2`, `root` |

### Site / Metadata Variables

From `data/metadata.yaml`:

| Variable | Description |
|----------|-------------|
| `&#64;metadata.title` | Site title |
| `&#64;metadata.description` | Site description |
| `&#64;metadata.url` | Site base URL |
| `&#64;metadata.author` | Site author |
| `&#64;metadata.image` | Default site image |
| `&#64;site.title` | Alias for `&#64;metadata.title` |
| `&#64;site.url` | Alias for `&#64;metadata.url` |

**Usage:**

```lax
&lt;title&gt;&#64;title&lt;/title&gt;
&lt;title&gt;&#64;metadata.title&lt;/title&gt;
&lt;link rel="canonical" href="&#64;metadata.url&#64;current_url"&gt;
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
&#64;if toc_html
  &#64;toc_html
&#64;end
```

### Footer Notes

Footer Notes Support in V1.2:

```md
This is footnote&#91;^1&#93;.

&#91;^1&#93;: footnote here
```

### Full URL Construction

Jekyll `&#123;&#123;page.url&#125;&#125;` equivalent in V1.2:

```lax
&#64;current_url -&gt; /v1.2/docs/
&#64;metadata.url&#64;current_url -&gt; https://luax.axcora.com/v1.2/docs/
```

### Inside Loops

**Posts loop:**

```lax
&#64;for collections.posts limit=3
  &lt;a href="&#64;url"&gt;&#64;title&lt;/a&gt;
  &lt;time&gt;&#64;date&lt;/time&gt;
  &lt;p&gt;&#64;excerpt&lt;/p&gt;
&#64;end
```

**Collections:**

```lax
&#64;for collections.v0.3
  &lt;a href="&#64;url"&gt;&#64;title&lt;/a&gt;
&#64;end

&#64;for collections.v1.2
  &lt;a href="&#64;url"&gt;&#64;title&lt;/a&gt;
&#64;end
```

#### Fallback Pattern

V1.2 LAX does NOT support `or` inline, use `&#64;if`:

```lax
&#64;if title
  &lt;title&gt;&#64;title&lt;/title&gt;
&#64;else
  &lt;title&gt;&#64;metadata.title&lt;/title&gt;
&#64;end

&#64;if og_image
  &lt;meta property="og:image" content="&#64;metadata.url&#64;og_image"&gt;
&#64;else
  &#64;if image
    &lt;meta property="og:image" content="&#64;metadata.url&#64;image"&gt;
  &#64;else
    &lt;meta property="og:image" content="&#64;metadata.url&#64;metadata.image"&gt;
  &#64;end
&#64;end
```

### SEO Variables

| Variable | Fallback Chain |
|----------|----------------|
| `&#64;og_title` | `&#64;og_title` > `&#64;title` > `&#64;metadata.title` |
| `&#64;og_description` | `&#64;og_description` > `&#64;description` > `&#64;metadata.description` |
| `&#64;og_image` | `&#64;og_image` > `&#64;image` > `&#64;metadata.image` |
| `&#64;og_type` | `website` / `article` |
| `&#64;current_url` | For `og:url` and canonical |

### Navigation Variables

```lax
&#64;base_url -&gt; ../
&#64;collection -&gt; current collection name
&#64;collections -&gt; all collections object
&#64;prev_post.url -&gt; previous post URL
&#64;next_post.url -&gt; next post URL
```

### Complete Head Example V1.2

```lax
&#64;if title
&lt;title&gt;&#64;title&lt;/title&gt;
&#64;else
&lt;title&gt;&#64;metadata.title&lt;/title&gt;
&#64;end

&lt;meta property="og:url" content="&#64;metadata.url&#64;current_url"&gt;
&lt;link rel="canonical" href="&#64;metadata.url&#64;current_url"&gt;
```

### Summary

| Category | Variables |
|----------|-----------|
| **Page** | `&#64;title`, `&#64;description`, `&#64;content`, `&#64;date`, `&#64;current_url`, `&#64;url`, `&#64;slug`, `&#64;author`, `&#64;image`, `&#64;layout`, `&#64;collection` |
| **Site** | `&#64;metadata.*`, `&#64;site.*` |
| **Navigation** | `&#64;base_url`, `&#64;collections`, `&#64;prev_post.url`, `&#64;next_post.url` |
| **SEO** | `&#64;og_title`, `&#64;og_description`, `&#64;og_image`, `&#64;og_type` |

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
      uses: actions/checkout&#64;v4
    - name: Setup Lua
      uses: leafo/gh-actions-lua&#64;v10
      with:
        luaVersion: "5.4"
    - name: Build Site
      run: lua build.lua
    - name: Upload artifact
      uses: actions/upload-pages-artifact&#64;v3
      with:
        path: ./dist
  deploy:
    environment:
      name: github-pages
      url: $&#123;&#123; steps.deployment.outputs.page_url &#125;&#125;
    runs-on: ubuntu-latest
    needs: build
    steps:
    - name: Deploy
      uses: actions/deploy-pages&#64;v4
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
