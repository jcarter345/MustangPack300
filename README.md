# Cub Scout Pack 300 Website

Hugo-based static site for Pack 300.

## Quick Start

```
# Preview locally (live-reload)
serve.bat            # → open http://localhost:1313

# Build for production
build.bat            # → output goes to /public/
```

> **First time?** Hugo must be in your PATH. If `serve.bat` fails, re-open the terminal after the winget install, or run hugo via the full path.

---

## Adding a News Post

```
# From the site root:
hugo new posts/my-post-title.md
```

Edit the new file in `content/posts/my-post-title.md`:

- Change `draft: false` when it's ready to publish.
- Everything before `<!--more-->` is the home-page excerpt.
- Use standard Markdown.

---

## Configuring the Google Calendar

1. Open `hugo.toml`
2. Find `calendar_embed_url`
3. Replace the placeholder with your calendar's embed URL

**Getting the embed URL:**
- Google Calendar → Settings (⚙) → your calendar → *Integrate calendar*
- Set the calendar to **Public**
- Copy the `src="..."` value from the Embed code `<iframe>`
- Paste it into `hugo.toml`

---

## Updating References

Edit `data/references.yaml`.
Each category has a `name`, `icon` (emoji), and a list of `links`:

```yaml
- title: "Link Title"
  url: "https://example.com"
  description: "One-sentence description."
```

Rebuild/reload and the References page updates automatically.

---

## Updating About Page

Edit `content/about/_index.md` — standard Markdown.

---

## Site Structure

```
p300Site/
├── hugo.toml              ← site config, calendar URL, contact email
├── content/
│   ├── posts/             ← NEWS POSTS go here
│   ├── about/_index.md    ← About page
│   ├── events/_index.md   ← Events intro text
│   └── references/        ← (auto-generated from data/)
├── data/
│   └── references.yaml    ← reference links
├── layouts/               ← HTML templates
├── static/
│   ├── css/style.css      ← all styles
│   └── images/            ← put photos here
├── serve.bat              ← local dev server
└── build.bat              ← production build
```

---

## Deploying

After running `build.bat`, upload the entire contents of the `public/` folder to your web host (shared hosting, Netlify, GitHub Pages, etc.).

For **Netlify** drag-and-drop deployment:
1. Run `build.bat`
2. Drag the `public/` folder to [app.netlify.com/drop](https://app.netlify.com/drop)
