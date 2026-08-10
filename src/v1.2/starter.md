---
layout: index.lax
title: LUAX SSG v1.2
description: Blazing fast static site generator built with Lua + LAX. Now with versioned docs support v0.3, dot-folder fix & pretty URL router.
intro: LUAX v1.2 is here - lightweight, fast, and modern static site generator built with Lua. Now supports versioned documentation like /v0.3/about/, /v1.2/docs/ with full pretty URL and Windows dot-folder fix.
button1: 
  text: Get Started
  url: /v1.2/docs/
button2: 
  text: Download
  url: https://creativitaz.gumroad.com/l/luax
blog_title: Latest Posts
intro_section: 
  seo: 
    title: SEO
    text: Meta Tags, Open Graph, JSON-LD, sitemap, RSS, robots.txt
  markdown: 
    title: Markdown
    text: Write content in Markdown with TOC, FN
  yaml: 
    title: YAML
    text: Powerful YAML frontmatter & data folder
  tagger: 
    title: TAGS
    text: Automatic tags + versioned collections
  fast: 
    title: Fast
    text: luax build - Builds 15 files in 1.3s
  assets: 
    title: Versioning
    text: Native support for /v0.3/, /v1.2/, /v.03/ docs
info_section: 
  article: 
    why:
      title: What's New in v1.2?
      text: LUAX v1.2 rebuilt for versioned documentation and pretty URL stability
      i: 
        - info: Versioned Docs - Full support for /v0.3/about/, /v1.2/docs/, /v.03/ with dot in folder name
        - info: Dot-Folder Fix - Fixed Windows dir /b bug for folders like v0.3, v1.2, v.03
        - info: Pretty URL Router - New router.php fixes /about/ vs /about/index.html on localhost
        - info: PHP Priority Server - start.lua now prioritizes PHP + router.php over Python
    concept:
      title: The Concept
      text: LUAX follows the same concept as popular SSGs like Jekyll, Hugo, and 11ty, but with versioning power
      i: 
        - info: Content - Write in src/v0.3/about.md -> /v0.3/about/
        - info: Versioning - Create src/v1.2/, src/v0.3/ for multi-version docs
        - info: Templates - Use LAX template engine for layouts
        - info: Build - Generate static HTML with pretty URLs
    what:
      title: What Makes LUAX v1.2 Different?
      text: Why you need Lua for your versioned documentation projects.
      i: 
        - info: Versioning Native - No plugin needed for /v0.3/, /v1.2/
        - info: Pure Lua - No JavaScript, no Ruby, no Python needed for build
        - info: Dot-Safe - Works with v0.3, v1.0, v.03, v2.5 folder names
        - info: Pretty URL Fixed - router.php handles /about/ correctly
  why: 
    title: Why Choose LUAX v1.2?
    list: 
      - text: Versioned Docs - /v0.3/about/, /v1.2/docs/ support
      - text: Dot Folder - Support v0.3, v.03, v1.2 naming
      - text: Markdown - Write content in Markdown
      - text: Tags - Automatic tag pages
      - text: Pagination - Blog posts + versioned pagination
      - text: SEO - Open Graph, JSON-LD, sitemap, RSS
      - text: Router - PHP router.php for perfect pretty URLs
      - text: Fast - Builds in milliseconds
      - text: Simple - Easy to customize
  build: 
    title: Built for Versioned Docs
    text: LUAX v1.2 was created to make versioned documentation simple. No complex configs, no heavy dependencies. Just create src/v0.3/about.md and it becomes /v0.3/about/. Perfect for changelogs, API docs, and multi-version sites.
image: /img/darkluax2.webp
---

# LUAX SSG v1.2 is Here

The lightweight, fast, and modern static site generator is now ready for versioned documentation.

## What's New in v1.2

We fixed the versioning nightmare.

- **Versioned Docs Support** - Create `src/v0.3/about.md` -> `http://localhost:8080/v0.3/about/` automatically. Works with `v0.3`, `v1.2`, `v.03`, `v2.5`
- **Dot-Folder Fix** - Fixed Windows `dir /b` bug that broke folders with dots. Now uses `dir /b /a` and `\\*` check
- **Pretty URL Router** - New `router.php` fixes PHP dev server to serve `/v0.3/about/index.html` when you visit `/v0.3/about/`
- **Smart Server** - `start.lua` now prioritizes PHP + router.php over Python for perfect pretty URLs
- **No More Collision** - Fixed `src/v0.3.md` vs `src/v0.3/index.md` collision. Use one, not both.

Explore the latest posts below, powered by the new versioned collection system.
