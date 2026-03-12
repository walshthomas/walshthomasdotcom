+++
date     = "2016-04-20T00:00:00"
draft    = false
title    = "Research"
subtitle = ""
weight   = 25
+++

<style>

/* ══════════════════════════════════════════
   LIGHT MODE (default)
══════════════════════════════════════════ */

:root {
  --navy:         #1c2b3a;
  --red:          #c8380a;
  --stone:        #f0ede8;
  --muted:        #6b6b6b;
  --border:       #dedad3;
  --text:         #1a1a1a;
  --btn-bg:       #f0ede8;
  --btn-fg:       #1c2b3a;
  --btn-hover-bg: #1c2b3a;
  --btn-hover-fg: #ffffff;
  --wip-bg:       #f0ede8;
  --badge-jmp-bg: rgba(200,56,10,0.12);
  --badge-jmp-fg: #c8380a;
  --badge-rr-bg:  rgba(26,107,74,0.12);
  --badge-rr-fg:  #1a6b4a;
  --section-rule: #1c2b3a;
  --paper-border: #dedad3;
  --meta-link-ul: rgba(107,107,107,0.3);
}

/* ══════════════════════════════════════════
   DARK MODE
══════════════════════════════════════════ */

@media (prefers-color-scheme: dark) {
  :root {
    --navy:         #c8d5e8;
    --red:          #f07050;
    --stone:        #252a35;
    --muted:        #8a94a6;
    --border:       #343b4a;
    --text:         #e2e8f0;
    --btn-bg:       #252a35;
    --btn-fg:       #c8d5e8;
    --btn-hover-bg: #c8d5e8;
    --btn-hover-fg: #1a1f2a;
    --wip-bg:       #20252f;
    --badge-jmp-bg: rgba(240,112,80,0.16);
    --badge-jmp-fg: #f07050;
    --badge-rr-bg:  rgba(45,168,112,0.16);
    --badge-rr-fg:  #2da870;
    --section-rule: #3a4558;
    --paper-border: #343b4a;
    --meta-link-ul: rgba(138,148,166,0.3);
  }
}

/* ══════════════════════════════════════════
   SUBSECTION HEADINGS
   (Wowchemy renders the main "Research" title —
   these are Working Papers / WIP / Policy Work)
══════════════════════════════════════════ */

.research-subsection {
  margin-top: 2rem;
  margin-bottom: 0.9rem;
  padding-bottom: 0.35rem;
  border-bottom: 1px solid var(--section-rule);
  font-size: 1rem;
  font-weight: 600;
  letter-spacing: 0.01em;
  color: var(--navy);
}

.research-subsection:first-child {
  margin-top: 0;
}

/* ══════════════════════════════════════════
   PAPER LIST
══════════════════════════════════════════ */

.paper-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.paper-list li {
  padding: 1.1rem 0;
  border-bottom: 1px solid var(--paper-border);
}

.paper-list li:last-child {
  border-bottom: none;
}

.paper-title {
  font-size: 0.97rem;
  font-weight: 600;
  margin-bottom: 0.3rem;
  line-height: 1.4;
  color: #1a1a1a !important;
}

.paper-title a,
.paper-title a:link,
.paper-title a:visited {
  color: #1c2b3a !important;
  text-decoration: none !important;
  transition: color .15s;
}

.paper-title a:hover {
  color: #c8380a !important;
}

.paper-meta {
  font-size: 0.81rem;
  color: #6b6b6b !important;
  font-style: italic;
  margin-bottom: 0.5rem;
  line-height: 1.55;
}

.paper-meta a,
.paper-meta a:link,
.paper-meta a:visited {
  color: #6b6b6b !important;
  text-decoration: none !important;
  border-bottom: 1px solid rgba(107,107,107,0.3);
  font-style: normal;
  transition: color .15s;
}

.paper-meta a:hover {
  color: #1c2b3a !important;
}

.wip-title {
  color: #1c2b3a !important;
}

.wip-co {
  color: #6b6b6b !important;
}

.research-subsection {
  color: #1c2b3a !important;
  border-bottom-color: #1c2b3a !important;
}

/* dark mode hard overrides */
@media (prefers-color-scheme: dark) {
  .paper-title { color: #e2e8f0 !important; }
  .paper-title a,
  .paper-title a:link,
  .paper-title a:visited { color: #c8d5e8 !important; }
  .paper-title a:hover   { color: #f07050 !important; }
  .paper-meta            { color: #8a94a6 !important; }
  .paper-meta a,
  .paper-meta a:link,
  .paper-meta a:visited  { color: #8a94a6 !important; }
  .paper-meta a:hover    { color: #c8d5e8 !important; }
  .wip-title             { color: #c8d5e8 !important; }
  .wip-co                { color: #8a94a6 !important; }
  .research-subsection   { color: #c8d5e8 !important; border-bottom-color: #3a4558 !important; }
}

/* ══════════════════════════════════════════
   BADGES
══════════════════════════════════════════ */

.badge {
  display: inline-block;
  font-size: 0.67rem;
  font-weight: 600;
  font-style: normal;
  letter-spacing: 0.07em;
  text-transform: uppercase;
  padding: 2px 8px;
  border-radius: 3px;
  vertical-align: middle;
  margin-left: 7px;
  position: relative;
  top: -1px;
}

.badge-jmp { background: var(--badge-jmp-bg); color: var(--badge-jmp-fg); }
.badge-rr  { background: var(--badge-rr-bg);  color: var(--badge-rr-fg); }

/* ══════════════════════════════════════════
   LINK BUTTONS
══════════════════════════════════════════ */

.paper-links {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
  margin-top: 0.45rem;
}

.btn-paper {
  display: inline-block;
  font-size: 0.68rem;
  font-weight: 600;
  letter-spacing: 0.07em;
  text-transform: uppercase;
  text-decoration: none;
  padding: 3px 11px;
  border-radius: 3px;
  border: 1px solid var(--border);
  color: var(--btn-fg);
  background: var(--btn-bg);
  transition: background .15s, color .15s, border-color .15s;
}

.btn-paper:hover {
  background: var(--btn-hover-bg);
  color: var(--btn-hover-fg);
  border-color: var(--btn-hover-bg);
}

/* ══════════════════════════════════════════
   WORK IN PROGRESS CARDS
══════════════════════════════════════════ */

.wip-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
  gap: 10px;
  margin-top: 0.5rem;
}

.wip-list li {
  background: var(--wip-bg);
  border: 1px solid var(--border);
  border-radius: 4px;
  padding: 14px 16px;
}

.wip-title {
  font-size: 0.88rem;
  font-weight: 600;
  color: var(--navy);
  margin-bottom: 4px;
  line-height: 1.4;
}

.wip-co {
  font-size: 0.77rem;
  color: var(--muted);
  font-style: italic;
}

/* ══════════════════════════════════════════
   POLICY NOTE
══════════════════════════════════════════ */

.policy-note {
  font-size: 0.86rem;
  color: var(--muted);
  margin-top: 0.6rem;
}

.policy-note a {
  color: var(--navy);
  font-weight: 600;
  text-decoration: none;
}

.policy-note a:hover {
  text-decoration: underline;
}

</style>


<!-- ═══════════════════════════════════════════════════════ -->
<!--  WORKING PAPERS                                        -->
<!-- ═══════════════════════════════════════════════════════ -->

<h3 class="research-subsection">Working Papers</h3>

<ul class="paper-list">

  <li>
    <div class="paper-title">
      <a href="/uploads/jm/jmp.pdf" target="_blank">Earnings Management and Investment</a>
      <span class="badge badge-jmp">Job Market Paper</span>
    </div>
    <div class="paper-meta">Draft: October 2025</div>
    <div class="paper-links">
      <a class="btn-paper" href="/uploads/jm/jmp.pdf" target="_blank">PDF</a>
    </div>
  </li>

  <li>
    <div class="paper-title">
      <a href="/uploads/jm/fiscal_news.pdf" target="_blank">Fiscal News and the Macroeconomy</a>
    </div>
    <div class="paper-meta">
      with <a href="https://www.wolframhorn.com/" target="_blank">Wolfram Horn</a>
      &nbsp;·&nbsp; Draft: March 2026
    </div>
    <div class="paper-links">
      <a class="btn-paper" href="/uploads/jm/fiscal_news.pdf" target="_blank">PDF</a>
      <a class="btn-paper" href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6303600" target="_blank">SSRN</a>
    </div>
  </li>

  <li>
    <div class="paper-title">
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4980012" target="_blank">Making the Cut: Close Elections and Local Welfare Policy</a>
      <span class="badge badge-rr">R&amp;R · EER</span>
    </div>
    <div class="paper-meta">
      with <a href="https://nikolajbroberg.org/" target="_blank">Nikolaj Broberg</a>
      and <a href="https://sites.google.com/view/tuulitahtinen/home" target="_blank">Tuuli Tähtinen</a>
      &nbsp;·&nbsp; Revise &amp; Resubmit, <em>European Economic Review</em>, March 2026
    </div>
    <div class="paper-links">
      <a class="btn-paper" href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4980012" target="_blank">SSRN</a>
    </div>
  </li>

  <li>
    <div class="paper-title">
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4478427" target="_blank">Job Search and the Threat of Unemployment Benefit Sanctions</a>
    </div>
    <div class="paper-meta">Draft: June 2023</div>
    <div class="paper-links">
      <a class="btn-paper" href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4478427" target="_blank">SSRN</a>
    </div>
  </li>

  <li>
    <div class="paper-title">
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4009725" target="_blank">Sectoral Volatility and the Investment Channel of Monetary Policy</a>
    </div>
    <div class="paper-meta">
      with <a href="https://www.ozgenozturk.com/" target="_blank">Ozgen Ozturk</a>
      &nbsp;·&nbsp; New draft coming soon
    </div>
    <div class="paper-links">
      <a class="btn-paper" href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4009725" target="_blank">SSRN</a>
      <a class="btn-paper" href="/uploads/pres/volatility_slides.pdf" target="_blank">Slides</a>
    </div>
  </li>

</ul>


<!-- ═══════════════════════════════════════════════════════ -->
<!--  WORK IN PROGRESS                                      -->
<!-- ═══════════════════════════════════════════════════════ -->

<h3 class="research-subsection">Work in Progress</h3>

<ul class="wip-list">

  <li>
    <div class="wip-title">Lumpy Investment: a Micro-to-Macro FAVAR Approach</div>
    <div class="wip-co">with Christoph Görtz, Sisir Ramanan &amp; John Tsoukalas</div>
  </li>

  <li>
    <div class="wip-title">The Macroeconomic Implications of Debt Distressed Firms</div>
    <div class="wip-co">with Sisir Ramanan, Yannis Tsafos &amp; John Tsoukalas</div>
  </li>

  <li>
    <div class="wip-title">Financing Lumpy Capacity Adjustments: Evidence from UK Firms</div>
    <div class="wip-co">with Christoph Görtz &amp; John Tsoukalas</div>
  </li>

</ul>


<!-- ═══════════════════════════════════════════════════════ -->
<!--  POLICY WORK                                           -->
<!-- ═══════════════════════════════════════════════════════ -->

<h3 class="research-subsection">Policy Work</h3>

<p class="policy-note">
  Selected work from the ECB, European Commission and Bruegel is available on
  <a href="https://scholar.google.com/citations?user=_G9RjuwAAAAJ&hl=en" target="_blank">Google Scholar →</a>
</p>