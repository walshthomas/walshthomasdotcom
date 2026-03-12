+++
date    = "2016-04-20T00:00:00"
draft   = false
title   = "Research"
subtitle = ""
weight  = 25
+++

<style>
/* ── palette: light mode ── */
:root {
  --navy:   #1c2b3a;
  --red:    #c8380a;
  --stone:  #f0ede8;
  --muted:  #6b6b6b;
  --border: #dedad3;
  --text:   #1a1a1a;
  --bg:     transparent;
  --btn-bg: #f0ede8;
  --btn-fg: #1c2b3a;
  --wip-bg: #f0ede8;
}

/* ── palette: dark mode ── */
@media (prefers-color-scheme: dark) {
  :root {
    --navy:   #e2e8f0;   /* light for headings/titles on dark bg */
    --red:    #f07050;   /* softened red — less harsh on dark */
    --stone:  #2a2f38;   /* dark card background */
    --muted:  #9ca3af;   /* mid-grey for meta text */
    --border: #3a4050;   /* subtle dark border */
    --text:   #e2e8f0;
    --bg:     transparent;
    --btn-bg: #2a2f38;
    --btn-fg: #c8d5e8;
    --wip-bg: #252a33;
  }
}

/* ── subsection headings (Working Papers, WIP, Policy) ── */
/* The main "Research" title is rendered by Wowchemy — don't override it */
.research-subsection {
  margin-top: 2rem;
  margin-bottom: 0.9rem;
  padding-bottom: 0.35rem;
  border-bottom: 1px solid var(--border);
  font-size: 1rem;
  font-weight: 600;
  letter-spacing: 0.01em;
  color: var(--navy);
}

.research-subsection:first-child {
  margin-top: 0;
}

/* ── paper list ── */
.paper-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.paper-list li {
  padding: 1.1rem 0;
  border-bottom: 1px solid var(--border);
}

.paper-list li:last-child {
  border-bottom: none;
}

/* ── paper title ── */
.paper-title {
  font-size: 1rem;
  font-weight: 600;
  margin-bottom: 0.35rem;
  line-height: 1.35;
}

.paper-title a {
  color: var(--navy);
  text-decoration: none;
}

.paper-title a:hover {
  color: var(--red);
}

/* ── meta line (coauthors, status) ── */
.paper-meta {
  font-size: 0.82rem;
  color: var(--muted);
  font-style: italic;
  margin-bottom: 0.5rem;
  line-height: 1.5;
}

.paper-meta a {
  color: var(--muted);
  text-decoration: none;
  border-bottom: 1px solid rgba(107,107,107,0.3);
}

.paper-meta a:hover {
  color: var(--navy);
}

/* ── status badge ── */
.badge {
  display: inline-block;
  font-size: 0.7rem;
  font-weight: 600;
  font-style: normal;
  letter-spacing: 0.07em;
  text-transform: uppercase;
  padding: 2px 8px;
  border-radius: 3px;
  vertical-align: middle;
  margin-left: 6px;
}

.badge-jmp {
  background: rgba(200,56,10,0.15);
  color: var(--red);
}
.badge-rr {
  background: rgba(26,107,74,0.15);
  color: #2da870;
}

@media (prefers-color-scheme: dark) {
  .badge-jmp { background: rgba(240,112,80,0.18); }
  .badge-rr  { background: rgba(45,168,112,0.18); color: #2da870; }
}

/* ── link buttons ── */
.paper-links {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
  margin-top: 0.5rem;
}

.btn-paper {
  display: inline-block;
  font-size: 0.72rem;
  font-weight: 600;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  text-decoration: none;
  padding: 3px 11px;
  border-radius: 3px;
  border: 1px solid var(--border);
  color: var(--btn-fg);
  background: var(--btn-bg);
  transition: background 0.15s, color 0.15s, border-color 0.15s;
}

.btn-paper:hover {
  background: var(--navy);
  color: #fff;
  border-color: var(--navy);
}

@media (prefers-color-scheme: dark) {
  .btn-paper:hover {
    background: #c8d5e8;
    color: #1a1f2a;
    border-color: #c8d5e8;
  }
}

/* ── WIP cards ── */
.wip-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
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
  font-size: 0.9rem;
  font-weight: 600;
  color: var(--navy);
  margin-bottom: 4px;
  line-height: 1.4;
}

.wip-co {
  font-size: 0.78rem;
  color: var(--muted);
  font-style: italic;
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

<p style="font-size:0.88rem; color:var(--muted); margin-top:0.6rem;">
  Selected work from the ECB, European Commission and Bruegel is available on
  <a href="https://scholar.google.com/citations?user=_G9RjuwAAAAJ&hl=en"
     target="_blank"
     style="color:var(--navy); font-weight:600; text-decoration:none;">
    Google Scholar →
  </a>
</p>