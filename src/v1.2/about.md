---
title: About LUAX
layout: page.lax
description: About LUAX SSG v1.2 - Changelog, improvements and automatic collections
date: 2026-08-09
---

# About LUAX SSG

**LUAX** is a minimal, blazing-fast Static Site Generator built with **Lua** and **LAX Template Engine** by **AXCORA**.

Old version used `.html` templates. Now v1.2 is fully `.lax` powered.

## Changelog v1.2 - The Fix Update

This update is a complete overhaul based on real project debugging with automatic collections.

### 1. Automatic Collections System

No config needed. Just create folders:

```
src/
├── posts/         -> becomes collections.posts
├── projects/      -> becomes collections.projects
├── posts.md       -> controller for /posts/
└── index.md       -> homepage
```

`build.lua` will automatically:
- Scan all `src/*/` folders
- Sort by date desc
- Generate pagination `/posts/`, `/posts/page/2/`
- Generate `prev_post`, `next_post`, `collection_prev`, `collection_next`
- Pass to all templates as `@collections.posts`

### 2. Limit - Finally Fixed

Before v1.2, this failed on Windows and index:

```lax
@for collections.posts
  // shows ALL posts, ignores limit
@end
```

**Now in v1.2:**

```lax
@for collections.posts limit=3
  <h2>@title</h2>
@end

@for collections.posts limit=6
@end

<!-- Also supports : syntax -->
@for collections.posts :3
@end
```

Fix: Stripped `\r` Windows newline and added robust tokenizer in `lax.lua`.

### 3. Better YAML Support

Improved `yaml.lua` + `parse_tags()`:

```yaml
---
title: Hello World
date: 2026-08-09
tags: [lua, ssg, jamstack]
# or
tags:
  - lua
  - web
author: AXCORA
image: /img/cover.webp
excerpt: Fast SSG built with Lua
---
```

And `data/metadata.yaml`:

```yaml
title: LUAX SSG
description: Static Site Generator built with Lua. Fast, lightweight, and modern.
image: /img/axcoralogored.webp
intro: LUAX is a lightweight, fast, and modern static site generator...
home:
  blog_title: Latest Posts
```

Now YAML frontmatter, data folder, and nested keys like `metadata.home.blog_title` work perfectly with `@metadata.home.blog_title`.

### 4. Filter & Conditional - New Features

Filter like Eleventy:

```lax
@for collections.posts filter=tags:lua limit=3
@for collections.posts filter=tags:web
@for collections.posts where author=AXCORA
```

Conditionals:

```lax
@if author
  <span>by @author</span>
@end

@if not image
  <img src="/img/default.webp">
@end

@if author and image
@end

@if author or tags
@end
```

### 5. Universal Server & CLI

`start.lua` was using Linux `find` and `stat` -> infinite loop on Windows `C:\Users\...`. Now fixed with:

```
dir /b /s
powershell (Get-Item).LastWriteTime
```

And `luax.bat` / `luax.sh` now auto-detects `lua55`, `lua54`, `lua`.

## Why Lua?

- Fast execution - one of the fastest scripting languages
- Small footprint - no node_modules
- Portable - Windows, Linux, macOS
- Simple syntax

Built with love by AXCORA. Docs at luax.axcora.com
