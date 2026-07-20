---
layout: page.lax
title: Documentation
image: /img/cleanluax.webp
description: How to use Luax Lua Static Site Generator
---
## 🚀 LUAX SSG

**Static Site Generator built with Lua**

LUAX is a lightweight, fast, and modern static site generator built with Lua. It uses the LAX template engine to generate static websites from Markdown content with YAML frontmatter.

## Support & Donation

If you find LUAX helpful, consider supporting us:

+ [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
+ [Buy Me a Coffee](https://creativitaz.gumroad.com/coffee)
+ [GitHub](https://github.com/sponsors/mesinkasir)
Your support helps us maintain and improve LUAX! ❤️



## ✨ Features

- ⚡ **Fast** - Built with Lua for speed
- 📦 **Lightweight** - Minimal dependencies
- 🔧 **Easy** - Simple template system with LAX
- 📝 **Markdown** - Write content in Markdown with YAML frontmatter
- 🏷️ **Tags** - Automatic tag pages
- 📄 **Pagination** - Blog posts pagination
- 📱 **Responsive** - Bootstrap 5 ready
- 🔍 **SEO** - Open Graph, JSON-LD, sitemap, RSS feed
- 📂 **Assets** - Automatic public assets copying

## 📦 Installation

### Prerequisites

- [Donwload Lua](https://www.lua.org/download.html) (version 5.5 or higher)
- Python or PHP (for development server)

### Clone & Setup

```bash
git clone https://github.com/mesinkasir/luax.git
cd luax
```

### File Structure

```
luax/
├── build.lua          # Build engine
├── start.lua          # Development server
├── lax.lua            # LAX template engine
├── yaml.lua           # YAML parser
├── metadata.yaml      # Site configuration
├── luax.bat           # Windows command line
├── luax.sh            # Linux/Mac command line
├── src/
│   ├── posts/         # Blog posts (.md)
│   └── pages/         # Static pages (.md)
├── templates/
│   ├── layouts/       # Layout templates (.lax)
│   └── partials/      # Partial templates (.lax)
├── public/            # Static assets (css, img, js)
└── dist/              # Generated output
```

## 🚀 Usage

### Windows

```bash
luax build    # Build static site
luax start    # Start development server
```

### Linux / Mac

```bash
chmod +x luax.sh
./luax.sh build    # Build static site
./luax.sh start    # Start development server
```

### Development Server

After running `luax start`, open your browser to:
```
http://localhost:8080
```

## 📝 Content Management

### Create a Blog Post

Create a new `.md` file in `src/posts/`:

```
---
title: My First Post
date: 2024-01-01
tags: lua, tutorial, web
author: LUAX Team
image: /img/cover.webp
excerpt: This is my first blog post
description: Your description here,,,
---

# My First Post

Content goes here...
```

### Create a Page

Create a new `.md` file in `src/pages/`:

```
---
title: About Me
description: Learn more about me
image: /img/myimage.png
layout: default
---

# About Me

Page content goes here...
```

## 🎨 Templates

LUAX uses the **LAX template engine** with `.lax` files.

LAX = Lua AXcora

### Basic Template

```lax
@layout(default)

< main >
    < h1 >@title< /h1 >
    < p >@content< /p >
< /main >
```

### Loops and Conditions

```lax
@for posts
    < h2>@title< /h2>
    < p>@excerpt< /p>
@end

@if author
    < p>By @author< /p>
@end
```

### Partials

```lax
@include(header)
@include(footer)
```

### Layouts

```lax
@layout(default)

<main>
    @content
</main>
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

## 📦 Building

```bash
luax build
```

The site will be generated in the `dist/` folder.

## 🛠️ Development Server

```bash
luax start
```

The server will start at `http://localhost:8080`.

### Optional: Live Reload

For automatic browser refresh, install one of these:

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

concurrency:
  group: "pages"
  cancel-in-progress: false

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
    
    - name: Setup LuaRocks
      uses: leafo/gh-actions-luarocks@v4
    
    - name: Build Site
      run: |
        lua build.lua
    
    - name: Upload artifact
      uses: actions/upload-pages-artifact@v3
      with:
        path: ./dist

  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
    - name: Deploy to GitHub Pages
      id: deployment
      uses: actions/deploy-pages@v4
```

### Netlify

Create `netlify.toml`:

```toml
[build]
  command = "lua build.lua"
  publish = "dist"

[build.environment]
  LUA_VERSION = "5.4"
```

### Vercel

Create `vercel.json`:

```json
{
  "buildCommand": "lua build.lua",
  "outputDirectory": "dist",
  "framework": null
}
```

### Cloudflare Pages

Build command: `lua build.lua`
Output directory: `dist`

### Manual Deploy

Just upload the `dist/` folder to your web server:

```bash
# Using rsync
rsync -avz dist/ user@server.com:/var/www/html/

# Using scp
scp -r dist/* user@server.com:/var/www/html/
```

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

+ [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
+ [Buy Me a Coffee](https://creativitaz.gumroad.com/coffee)
+ [GitHub](https://github.com/sponsors/mesinkasir)

Your support helps us maintain and improve LUAX! ❤️

**🚀 Built with ❤️ using LUAX**
