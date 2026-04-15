## Design Context

### Users
Ruby developers, open-source maintainers and contributors, and broader Ruby community members and stakeholders. They visit the blog to stay informed about RubyGems releases, security advisories, ecosystem changes, and project updates. They're typically reading in a work context and value clarity and efficiency.

### Brand Personality
**Reliable, open, technical.** The voice is a trustworthy infrastructure project communicating clearly with its community — authoritative without being stuffy, transparent about decisions, and technically precise.

### Aesthetic Direction
- **Visual tone**: Clean, content-focused, utilitarian. The bold red (`#e9573f`) header is the signature element — everything else stays out of the way of the writing.
- **References**: Similar developer blogs (GitHub Blog, Rust Blog, Go Blog) — clean technical writing with strong typography and minimal decoration.
- **Anti-references**: Marketing-heavy blogs, excessive animation, dark patterns, overly playful or startup-y aesthetics.
- **Theme**: Light mode only.

### Color Palette
| Token    | Value     | Usage                              |
|----------|-----------|------------------------------------|
| `$red`   | `#e9573f` | Primary brand, header bg, links    |
| `$blue`  | `#53a4e0` | Secondary accent                   |
| `$green` | `#4fcc9c` | Success/positive                   |
| `$yellow`| `#ffde00` | Warning/attention                  |
| `$white` | `#ffffff` | Backgrounds, header text           |
| `$gray`  | `#c1c4ca` | Borders, muted text, bullets       |
| `$d-gray`| `#42484d` | Secondary text                     |
| `$black` | `#141c22` | Body text, code block bg           |

### Typography
- **Display**: Roboto 100 (thin) — used for the large "Blog" heading
- **Body**: Helvetica Neue / Helvetica / Arial, 18px, weight 300, line-height 1.66
- **Base font size**: 15px
- **Headings in content**: 18px, weight 800, uppercase
- **Code**: Courier monospace, bold inline, light on dark in blocks

### Design Principles
1. **Content first** — The design exists to serve the writing. No visual element should compete with the article text for attention.
2. **Consistency with rubygems.org** — The blog is part of the RubyGems ecosystem. Header, footer, nav, and color language should feel like a natural extension of the main site.
3. **Readable by default** — Generous spacing (48px between sections), comfortable line-height (1.66), and restrained typography create an effortless reading experience.
4. **Minimal decoration** — Use borders and whitespace for structure, not ornament. The red header provides enough visual identity.
5. **Accessible basics** — Semantic HTML, reasonable contrast ratios, keyboard navigability. No formal WCAG target, but don't introduce barriers.
