# AGENTS.md — Archiku website

Project facts for agent sessions working in this repo. Global discipline
(`~/.yoker/AGENTS.md`) and organization rules (`../AGENTS.md`) stack above
this file; nothing is duplicated here.

## What this repo is

The public Archiku marketing website. A Jekyll static site (GitHub Pages
stack, `github-pages` gem pins Jekyll 3.9) that builds from data:
a single-page homepage, plus the case study, its published analysis,
the use-case pages, `/faq/`, `/team/` and `/blog/`. CNAME pins the
custom domain.

## Where the truth lives

- **The homepage is driven by `_data/index.yaml`** (`meta:`, `footer:`
  and `sections:`; rendered by `index.html` via the `content` layout).
- **Every other page has its own data file** in `_data/`:
  `case-study.yaml`, `functional-analysis.yaml`, `faq.yaml`,
  `follow-up.yaml`, `acquire.yaml`, `modernize.yaml`, `usecases.yaml`,
  `team.yaml`, `blog.yaml`. Templates render from data; do not hardcode
  copy in HTML.
- `navigation.yaml` holds the navbar entries to other pages (Team, FAQ,
  Blog, Case Study). In-page sections appear in the navbar automatically
  when they carry a `nav_label`.
- `setup.yaml` (`root:`) is the base root for navbar/anchor links; it is
  `/` on the live site.
- Section `id` values drive anchors and navbar entries — renaming an id
  touches nav + any `#anchor` references in all data files and posts.
- **Authoritative offering content lives in `../hq/offering/`**
  (`core-message.md`, `website-copy.md`, `prose.md`) plus
  `../hq/consolidated.md`. For anything about the offering, pricing or
  roadmap, check HQ before writing. Back-port rule (§15c): HQ only adopts
  website wording the owner has explicitly confirmed.

## Copy rules (locked, from hq/offering/prose.md)

- No em-dashes, no semicolons. Short paragraphs.
- British-leaning spelling: "organisation", "artefacts", **"judgement"**.
- Locked vocabulary: "validated baseline analysis", "the Vault",
  **"analyst-days"** (never "man-days"), persona names as written.
- Spelling: **"Metamodel"** (one word), never "meta-model"/"MetaModel".
- **Euro amounts use European dot notation**: `€1.500`, `€4.900`,
  `€9.900` (comma grouping is a defect).
- Turnaround phrase is **"48 business hours"** (or hyphenated adjective
  "48-business-hour intake"), never "48-hour".
- Coming-soon framing is deliberate: Living Repository, Interactive
  Querying, Continuous Monitoring, Argus, Oracle keep "Coming Soon" /
  "later this year" wording until the owner says otherwise. Roadmap
  capabilities are described in future tense ("will watch", "will keep
  current"), never present tense.
- Claims stay process-accurate, not outcome-absolute: the Vault
  "enforces" structure (never "guarantees"); NIS2 wording is "management
  is held accountable" (never "personally liable"); quality statements
  cite the measured evidence (logged review effort) instead of verdicts
  ("at least on par").
- Do not touch prices or the SLOC ladder without owner instruction: the
  site ladder is a proposal (HQ open item Q4), offer-based Enterprise
  tier has no published price.

## Phase 0 offer (canonical wording, owner-decided 2026-10)

Up to 10K SLOC, analyzed within 48 business hours of onboarding,
€1.500, fully credited when continuing to a full analysis within 60
days. If the live presentation shows no value, the customer pays
nothing: value is judged by the customer, on that presentation; on
decline the code is purged and the analysis discarded. The deliverable
(the static analysis site, as published for the Financials case study)
is received only after proceeding and paying.

## The case study's real/illustrative boundary (locked)

The Financials story is fictional: its people (John, Alice, Peter), the
decisions and the development agency, including the rebuild scenario,
are an illustrative narrative embedding the analysis. The analysis, the
run that produced it and the published reports are real. This boundary
must stay explicit wherever the story is told (case-study hero closing,
story intro, final beat, third blog post).

## Homepage flow (owner-approved 2026-10)

hero (outcome-first: kicker, motto as title, outcome tagline, opener)
→ tracks ("Three ways in, no wrong door") → use cases → value in
numbers → benefits → deliverables → method → process → team → pricing
→ contact. The tracks section is the single CTA-block; the hero itself
carries no buttons.

## Build & verification

- Makefile targets: `make build` (bundle exec jekyll build), `make serve`
  (auto-reloading preview), `make install`, `make update`. No check/test
  targets — the build IS the gate (YAML parse + render).
- **A `make serve` usually runs during website sessions** (owner watches
  live). Do NOT run `make build` after every tweak — only as the final
  gate before committing.
- Working files must never appear in `_site/` (the live site):
  `_config.yml` excludes `README.md`, `local/`, `TODO.md`, `AGENTS.md`,
  `Makefile`, `yoker.toml`, `SESSION.md` (plus Gemfile/lock, vendor,
  CNAME). `.gitignore` covers build artifacts, `local/` and `SESSION.md`;
  AGENTS.md / README.md / TODO.md are repo files and belong in git. If
  adding a working file, add it to `exclude:`.
- Design system: Bootstrap 5.2 CDN + Lato + brand orange `#f4623a`.
  Deliberately small type scale (see css/styles.css header); owner
  rejected many font sizes before.
- Section types available in `_includes/sections/`: badge-cards,
  blog-index, cta, faq, hero, intro, numbered-cards, paragraphs,
  pricing-table, profiles, split, steps, story, tabs, tracks,
  usecase-groups, values.

## Owner-made design decisions to respect

- The method section (`#method`) carries a translucent metamodel
  watermark (`img/metamodel.png`, opacity 0.12, multiply blend, linear
  dissolve mask). Owner verdict "looks gorgeous" — do not "improve" it
  away.
- The hero shows the outcome first ("Know what your software actually
  does.") with the motto "Uncovering the essence. Keeping it alive."
  as its title line; the archaeology branding stays, but never as the
  first thing a visitor must decode.

## Session habits that worked here

- Owner hand-edits the data files mid-session: re-read the file fresh
  before any further edit; never batch same-file updates.
- `SESSION.md` holds volatile session handoff (gitignored, never
  committed).
- Commit style: atomic commits, conventional prefixes, trailer
  `🤖 Implemented together with Yoker`. Push only on owner approval.