---
layout: starter.lax
title: LUAX - Blazing Fast Lua SSG
description: LUAX is a blazing fast static site generator built with Lua + LAX Template Engine. Markdown, YAML, Tags, SEO & native versioned docs support.
intro: LUAX - The lightweight, fast, and modern static site generator. Built with pure Lua, no Node, no Ruby. Write Markdown, build in milliseconds, deploy anywhere.
button1: 
  text: View on Github
  url: https://github.com/mesinkasir/luax
button2: 
  text: View on Gumroad
  url: https://creativitaz.gumroad.com/l/luax
blog_title: Features
intro_section: 
  seo: 
    title: SEO Built-in
    text: OG Tags, Twitter Card, JSON-LD, sitemap.xml, RSS, robots.txt
  markdown: 
    title: Markdown
    text: Write content in Markdown, frontmatter YAML, live reload
  yaml: 
    title: YAML Data
    text: Powerful data folder + frontmatter for dynamic content
  tagger: 
    title: Tags Auto
    text: Automatic tag pages /tags/ with pagination
  fast: 
    title: Super Fast
    text: Pure Lua - Build 100 pages in milliseconds
  assets: 
    title: Versioning
    text: Native support for /v0.3/, /v1.2/ docs versioning
info_section: 
  article: 
    why:
      title: What is LUAX?
      text: LUAX is a static site generator that follows Jekyll/Hugo/11ty concept but built with Lua - fast, simple, and powerful
      i: 
        - info: Pure Lua - No JavaScript, no Ruby, no Python needed
        - info: LAX Template - Simple @if, @for, @include template engine
        - info: Markdown First - Write src/about.md -> /about/
        - info: Fast Build - luax build compiles everything to dist/
    concept:
      title: How It Works?
      text: Same concept as popular SSG, but simpler and faster
      i: 
        - info: Content - Write Markdown in src/ folder
        - info: Templates - Use LAX layouts in templates/layouts/
        - info: Data - Put YAML/JSON in data/ folder for global data
        - info: Build - Run luax build -> static HTML in dist/
    what:
      title: Versioning Support?
      text: LUAX supports versioned documentation natively - perfect for docs, changelogs, API versions
      i: 
        - info: Multi Version - Create src/v0.3/, src/v1.2/ for docs versioning
        - info: Dot Safe - Supports folder names like v0.3, v1.2, v.03
        - info: Pretty URLs - /v0.3/about/ serves /v0.3/about/index.html
        - info: No Plugin - Native support, no extra config needed
  why: 
    title: Why Choose LUAX?
    list: 
      - text: Blazing Fast - Built with Lua, builds in ms
      - text: Simple - No complex config, just folders
      - text: Markdown - Write in Markdown + YAML frontmatter
      - text: SEO Ready - OG, JSON-LD, sitemap, RSS included
      - text: Tags & Pagination - Auto generated
      - text: Versioning - Native /v0.3/, /v1.2/ support
      - text: Pretty URLs - Clean URLs with router.php
      - text: Easy Deploy - Static HTML, deploy anywhere
      - text: LAX Template - Simple @if @for syntax
  build: 
    title: Built for Speed & Simplicity
    text: LUAX was created to make static sites simple again. No heavy dependencies, no complex setup. Just Lua, Markdown, and LAX template. Perfect for blogs, docs, portfolios, and versioned documentation like /v0.3/ and /v1.2/.
image: /img/darkluax2.webp
---

# LUAX - Blazing Fast Lua Static Site Generator

LUAX is a lightweight, fast, and modern static site generator built with Lua and LAX Template Engine.

No Node.js. No Ruby. No Python. Just **Lua**.

## What is LUAX?

LUAX follows the same concept as Jekyll, Hugo, and 11ty but with the power of Lua. You write content in Markdown, use LAX templates for layouts, and run `luax build` to generate static HTML.

- **Content** in `src/` - `src/about.md` becomes `/about/`
- **Templates** in `templates/layouts/` - LAX engine with `@if`, `@for`
- **Data** in `data/` - YAML/JSON for global data
- **Build** to `dist/` - Static HTML ready to deploy

Fast, simple, and works everywhere.

## Versioning? Yes, Native.

LUAX supports versioned documentation out of the box. Need to keep old docs?
