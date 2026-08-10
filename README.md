# 🚀 LUAX - Static Site Generator

Official Site for LUAX Lua Static Site Generator

Download starter project on [https://github.com/mesinkasir/luax](https://github.com/mesinkasir/luax)

**Lua • Markdown • YAML • Fast • Minimal • Elegant**

---

# Build
luax build

# Start server
luax start

# Open web Browser
http://localhost:8080

---

+ 🌐 Website [luax.axcora.com](https://luax.axcora.com)
+ 💻 GitHub [mesinkasir](https://github.com/mesinkasir)
+ 📧 Email [axcora@gmail.com](mailto:axcora@gmail.com)

---

### CHange log
CHANGELOG LUAX v1.2
v1.2 - Fix & Feature Update [LATEST]
Pretty URL: Changed from /posts/hello.html to /posts/hello/ clean URL
Fixed Limit: @for collections.posts limit=3 now works on index and partials (fixed Windows \r\n bug)
Lua 5.5 Support: Fixed attempt to assign to const variable 'part' - now compatible Lua 5.1 to 5.5
Automatic Collections: src/posts/ auto becomes collections.posts with pagination /posts/page/2/
Filter System: New @for collections.posts filter=tags:lua and where name=web
Conditionals: Added @if not, @if author and image, @if author or tags
Better YAML: Improved YAML parser for frontmatter and data/metadata.yaml nested keys
Universal Server: Fixed infinite loop on Windows - now uses dir /b /s + PowerShell
Universal CLI: luax.bat / luax.sh auto-detect lua55 / lua54 / lua
Template Engine: Migrated from .html to .lax - full LAX Engine v1.2
v0.3
LAX Template Engine introduced
Collections + Tags + Pagination
Hot reload server
v0.3.x and below
Used .html templates (legacy)

---

<div align="center">

**Made with ❤️ by [Axcora Technology](https://axcora.com)**

</div>

