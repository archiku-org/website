# AGENTS.md — Archiku website

Project facts for agent sessions working in this repo. Global discipline
(`~/.yoker/AGENTS.md`) and organization rules (`../AGENTS.md`) stack above
this file; nothing is duplicated here.

## What this repo is

The public Archiku marketing website. A Jekyll static site (GitHub Pages
stack, `github-pages` gem pins Jekyll 3.9) that builds a single-page
homepage from data. CNAME pins the custom domain; `next.html` is a WIP
homepage variant kept aside.

## Where the truth lives

- **`_data/content.yaml` is the single source of truth for all text,
  section composition and ordering.** The templates render from it; do not
  hardcode copy in HTML. `meta:` block drives page title/description.
- Section `id` values drive the navbar (auto-built from `nav_label`) and
  anchor links — renaming an id touches nav + any `#anchor` references.
- **Authoritative offering content lives in `../hq/offering/`**
  (`core-message.md`, `website-copy.md`, `prose.md`) plus
  `../hq/consolidated.md`. For anything about the offering, pricing or
  roadmap, check HQ before writing. Back-port rule (§15c): HQ only adopts
  website wording the owner has explicitly confirmed.

## Copy rules (locked, from hq/offering/prose.md)

- No em-dashes, no semicolons. Short paragraphs.
- British-leaning spelling ("organisation", "artefacts").
- Locked vocabulary: "validated baseline analysis", "the Vault", persona
  names as written. Spelling: **"Metamodel"** (one word) — decided
  2026-09-23, do not reintroduce "meta-model"/"MetaModel".
- Coming-soon framing is deliberate: Living Repository, Interactive
  Querying, Continuous Monitoring, Argus, Oracle keep "Coming Soon" /
  "later this year" wording until the owner says otherwise.
- Do not touch prices or the SLOC ladder without owner instruction: the
  site ladder is a proposal (HQ open item Q4), offer-based Enterprise
  tier has no published price.

## Build & verification

- Makefile targets: `make build` (bundle exec jekyll build), `make serve`
  (auto-reloading preview), `make install`, `make update`. No check/test
  targets — the build IS the gate (YAML parse + render).
- **A `make serve` usually runs during website sessions** (owner watches
  live). Do NOT run `make build` after every tweak — only as the final
  gate before committing.
- `Makefile`, `yoker.toml`, `SESSION.md` are excluded from the Jekyll
  build via `_config.yml` — they must never appear in `_site/` (live
  site). If adding a working file, add it to `exclude:`.
- Design system: Bootstrap 5.2 CDN + Lato + brand orange `#f4623a`.
  Deliberately small type scale (see css/styles.css header); owner
  rejected many font sizes before.
- Content section types available in `_includes/sections/`: hero,
  badge-cards (deliverables), values (benefits/method 2-col), numbered
  cards, steps, pricing-table, profiles, faq, cta, split.

## Owner-made decisions to respect (2026-09-23 session)

- Enterprise layer message: custom metamodels + custom agents tailored to
  the client's methodology; deliverable card is "Enterprise Integration".
- Method section (`#method`) carries a translucent metamodel watermark:
  `img/metamodel.png` (copied from ../carter/metamodel/metamodel.png),
  opacity 0.12, multiply blend, linear top/bottom dissolve mask. Owner
  verdict "looks gorgeous" — design approved, do not "improve" it away.

## Session habits that worked here

- Owner hand-edits `_data/content.yaml` mid-session: re-read the file
  fresh before any further edit; never batch same-file updates.
- `SESSION.md` holds volatile session handoff (gitignored, never commit).
- Commit style: atomic commits, conventional prefixes, trailer
  `🤖 Implemented together with Yoker`. Push only on owner approval.