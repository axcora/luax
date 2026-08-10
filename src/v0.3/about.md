---
title: About LUAX
description: LUAX is a simple static site generator built with Lua. Learn about the project, why we built it, and how it works.
layout: page.lax
image: /img/darkluax2.webp
---

## About LUAX SSG

LUAX is a **static site generator built with Lua**. It was created to make building static websites simple, fast, and fun.

## The Idea

Static site generators are everywhere. But most of them are complex, require heavy dependencies, or use languages that feel overkill for simple projects.

We wanted something different:

- **Simple** — Just Lua and a few files
- **Fast** — Builds in milliseconds, not seconds
- **Flexible** — Works with Markdown, YAML, and HTML templates

That's why we built LUAX.

## Why Lua?

Lua is **lightweight**, **fast**, and **easy to learn**. It's often used in game development and embedded systems, but it's also perfect for building CLI tools and web generators.

Here's why Lua fits LUAX perfectly:

- **Fast execution** — Builds your site in under a second
- **Small footprint** — No massive dependencies or package managers
- **Simple syntax** — Easy to understand and modify
- **Portable** — Runs on Windows, Linux, and macOS
- **Pure Lua** — No external binaries or complex toolchains needed

## What LUAX Can Do

LUAX handles everything you need for a modern static site:

- 📝 **Markdown content** with YAML frontmatter
- 🏷️ **Automatic tag pages**
- 📄 **Pagination** for blog posts
- 🎨 **Custom layouts** with LAX template engine
- 🔍 **SEO** with Open Graph, JSON-LD, and sitemap
- 📡 **RSS feed** for your blog
- 🖼️ **Asset management** with public folder
- 🚀 **Blazing fast builds**

## How It Works

1. You write content in Markdown (with frontmatter)
2. LUAX parses your content and templates
3. The engine renders everything to static HTML
4. Your site is ready to deploy anywhere

```
src/posts/*.md  →  dist/*.html
src/pages/*.md  →  dist/*.html
public/*        →  dist/*
```

## The Philosophy

LUAX follows the **UNIX philosophy**: do one thing and do it well.

- **Simple** — No unnecessary complexity
- **Transparent** — You control everything
- **Performant** — Build time should not waste your time
- **Portable** — Works on any platform

## Who Is LUAX For?

LUAX is perfect for:

- **Developers** who want a simple static site generator
- **Bloggers** who prefer Markdown and minimal setup
- **Designers** who need a clean, fast build process
- **Lua enthusiasts** exploring new use cases
- **Anyone** who wants a lightweight alternative to complex SSGs

## Getting Started

Getting started with LUAX is simple:

```bash
# Clone the repository
git clone https://github.com/yourusername/luax.git
cd luax

# Build your site
luax build

# Start the development server
luax start
```

That's it. Your site is running at `http://localhost:8080`.

## The Future

LUAX is a small project with big ideas. Future plans include:

- 🔧 **Plugin system** for extensibility
- 📊 **Analytics integration**
- 🖼️ **Image optimization**
- 🔄 **Git-based deployment**
- 📱 **Mobile-first themes**

## Support the Project

If you find LUAX helpful, consider supporting us:

- [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JVZVXBC4N9DAN)
- [Buy Me a Coffee](https://creativitaz.gumroad.com/coffee)
- [GitHub](https://github.com/sponsors/mesinkasir)

Your support helps us keep building and improving LUAX.

---

## Contributing

Contributions are welcome! Feel free to submit issues, feature requests, or pull requests.

## License

LUAX is open-source software licensed under the **MIT License**. You are free to use, modify, and distribute it.
