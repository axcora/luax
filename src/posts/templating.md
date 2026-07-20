---
layout: post.lax
title: Understanding LAX Template Engine
date: 2026-07-18
image: /img/luaxdev.webp
author: Axcora
tags: lua, templates, lax
excerpt: Learn the basics of LAX template engine used in LUAX.
---

# Understanding LAX Template Engine

LAX is the template engine powering LUAX. It's simple and powerful.

## Basic Layout

```
@layout(default)

< main >
    < h1>@title< /h1>
    < p>@content< /p>
< /main>

## Loops

@for posts
    < h2>@title< /h2>
    < p>@excerpt< /p>
@end

## Conditions

@if author
    < p>By @author< /p>
@end

## Partials

@include(header)
@include(footer)
```

LAX uses simple syntax. Just like HTML with extra features.