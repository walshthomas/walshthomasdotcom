+++
date    = "2016-04-20T00:00:00"
draft   = false
title   = "Research"
subtitle = ""
weight  = 25
+++

<style>
/* ── palette ── */
:root {
  --navy: #1c2b3a;
  --red:  #c8380a;
  --stone: #f0ede8;
  --muted: #6b6b6b;
  --border: #dedad3;
}

/* ── section headings ── */
.research-section {
  margin-top: 2.4rem;
  margin-bottom: 1rem;
  padding-bottom: 0.4rem;
  border-bottom: 2px solid var(--navy);
  font-size: 1.15rem;
  font-weight: 700;
  letter-spacing: 0.01em;
  color: var(--navy);
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

.badge-jmp { background: rgba(200,56,10,0.1); color: var(--red); }
.badge-rr  { background: rgba(26,107,74,0.1);  color: #1a6b4a; }

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
  color: var(--navy);
  background: var(--stone);
  transition: background 0.15s, color 0.15s, border-color 0.15s;
}

.btn-paper:hover {
  background: var(--navy);
  color: #fff;
  border-color: var(--navy);
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
  background: var(--stone);
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

<h2 class="research-section">Working Papers</h2>

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

<h2 class="research-section">Work in Progress</h2>

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

<h2 class="research-section">Policy Work</h2>

<p style="font-size:0.88rem; color:var(--muted); margin-top:0.6rem;">
  Selected work from the ECB, European Commission and Bruegel is available on
  <a href="https://scholar.google.com/citations?user=_G9RjuwAAAAJ&hl=en"
     target="_blank"
     style="color:var(--navy); font-weight:600; text-decoration:none;">
    Google Scholar →
  </a>
</p>