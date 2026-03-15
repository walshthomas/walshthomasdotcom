+++
date = "2016-04-20T00:00:00"
draft = false
title = "Research"
subtitle = ""
weight = 25
+++

<style>
.paper-list { list-style: none; padding: 0; display: flex; flex-direction: column; gap: 0; margin-bottom: 2rem; }

.paper-card { padding: 10px 0; border-bottom: 0.5px solid #dddddd; }
.paper-card:first-child { border-top: 0.5px solid #dddddd; }

.paper-top { display: flex; align-items: flex-start; justify-content: space-between; gap: 12px; margin-bottom: 5px; }

.paper-title-link {
  font-size: 15px;
  font-weight: 600;
  color: #1a2744 !important;
  text-decoration: none !important;
  line-height: 1.4;
  flex: 1;
}
.paper-title-link:hover { text-decoration: underline !important; }

.paper-badges { display: flex; gap: 4px; flex-shrink: 0; align-items: flex-start; padding-top: 2px; }

.paper-badge {
  display: inline-flex;
  align-items: center;
  gap: 3px;
  font-size: 11px;
  font-family: Lato, sans-serif;
  padding: 1px 6px;
  border-radius: 4px;
  text-decoration: none !important;
  white-space: nowrap;
  color: #1a2744 !important;
  border: 0.5px solid rgba(26,39,68,0.35);
  background: transparent;
}
.paper-badge:hover { background: rgba(26,39,68,0.06) !important; }
.paper-badge svg { width: 9px; height: 9px; flex-shrink: 0; }

.paper-meta { display: flex; flex-wrap: wrap; gap: 10px; align-items: center; }

.meta-item {
  display: inline-flex;
  align-items: center;
  gap: 4px;
  font-size: 12px;
  color: #555555;
}
.meta-item svg { width: 11px; height: 11px; flex-shrink: 0; opacity: 0.6; }
.meta-item a { color: inherit !important; }

.meta-label { font-size: 12px; color: #555555; font-style: italic; }

.wip-card { padding: 10px 0; border-bottom: 0.5px solid #dddddd; }
.wip-card:first-child { border-top: 0.5px solid #dddddd; }
.wip-title { font-size: 15px; font-weight: 600; color: #1a2744; display: block; margin-bottom: 3px; }
.wip-coauthors { font-size: 12px; color: #555555; }

.policy-link { font-size: 13px; color: #1565c0 !important; }

/* ── Dark mode overrides ── */
.dark .paper-card,
.dark .paper-card:first-child { border-color: rgba(255,255,255,0.12); }
.dark .paper-title-link { color: #c8d4f0 !important; }
.dark .paper-badge { color: #c8d4f0 !important; border-color: rgba(200,212,240,0.35); }
.dark .paper-badge:hover { background: rgba(200,212,240,0.08) !important; }
.dark .meta-item { color: #9aabb8; }
.dark .meta-label { color: #9aabb8; }
.dark .wip-card,
.dark .wip-card:first-child { border-color: rgba(255,255,255,0.12); }
.dark .wip-title { color: #c8d4f0; }
.dark .wip-coauthors { color: #9aabb8; }
.dark .policy-link { color: #7ab3e0 !important; }
</style>

<svg width="0" height="0" style="position:absolute">
  <defs>
    <symbol id="ico-ext" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
      <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/>
      <polyline points="15 3 21 3 21 9"/><line x1="10" y1="14" x2="21" y2="3"/>
    </symbol>
    <symbol id="ico-slides" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
      <rect x="2" y="3" width="20" height="14" rx="2"/>
      <line x1="8" y1="21" x2="16" y2="21"/><line x1="12" y1="17" x2="12" y2="21"/>
    </symbol>
    <symbol id="ico-cal" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <rect x="3" y="4" width="18" height="18" rx="2"/>
      <line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/>
    </symbol>
    <symbol id="ico-people" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/>
      <circle cx="9" cy="7" r="4"/>
      <path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/>
    </symbol>
  </defs>
</svg>

<h2>Working Papers</h2>

<ul class="paper-list">

  <li class="paper-card">
    <div class="paper-top">
      <a href="/uploads/jm/jmp.pdf" target="_blank" rel="noopener" class="paper-title-link">Earnings Management and Investment</a>
      <div class="paper-badges">
        <a href="/uploads/jm/jmp.pdf" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-ext"/></svg>PDF</a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item"><svg><use href="#ico-cal"/></svg>October 2025</span>
      <span class="meta-item"><svg><use href="#ico-people"/></svg>Solo-authored</span>
      <span class="meta-label">Job Market Paper</span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-top">
      <a href="/uploads/jm/fiscal_news.pdf" target="_blank" rel="noopener" class="paper-title-link">Fiscal News and the Macroeconomy</a>
      <div class="paper-badges">
        <a href="/uploads/jm/fiscal_news.pdf" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-ext"/></svg>PDF</a>
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6303600" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-ext"/></svg>SSRN</a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item"><svg><use href="#ico-cal"/></svg>March 2026</span>
      <span class="meta-item"><svg><use href="#ico-people"/></svg>With Wolfram Horn</span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-top">
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4980012" target="_blank" rel="noopener" class="paper-title-link">Making the Cut: Close Elections and Local Welfare Policy</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4980012" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-ext"/></svg>SSRN</a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item"><svg><use href="#ico-cal"/></svg>March 2026</span>
      <span class="meta-item"><svg><use href="#ico-people"/></svg>With <a href="https://nikolajbroberg.org/" target="_blank" rel="noopener">Nikolaj Broberg</a> and <a href="https://sites.google.com/view/tuulitahtinen/home" target="_blank" rel="noopener">Tuuli Tähtinen</a></span>
      <span class="meta-label">Revise &amp; Resubmit, <em>European Economic Review</em></span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-top">
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4478427" target="_blank" rel="noopener" class="paper-title-link">Job Search and the Threat of Unemployment Benefit Sanctions</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4478427" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-ext"/></svg>SSRN</a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item"><svg><use href="#ico-cal"/></svg>June 2023</span>
      <span class="meta-item"><svg><use href="#ico-people"/></svg>Solo-authored</span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-top">
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4009725" target="_blank" rel="noopener" class="paper-title-link">Sectoral Volatility and the Investment Channel of Monetary Policy</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4009725" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-ext"/></svg>SSRN</a>
        <a href="/uploads/pres/volatility_slides.pdf" target="_blank" rel="noopener" class="paper-badge"><svg><use href="#ico-slides"/></svg>Slides</a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item"><svg><use href="#ico-cal"/></svg>New draft coming soon</span>
      <span class="meta-item"><svg><use href="#ico-people"/></svg>With <a href="https://www.ozgenozturk.com/" target="_blank" rel="noopener">Ozgen Ozturk</a></span>
    </div>
  </li>

</ul>

<h2>Work in Progress</h2>

<ul class="paper-list">

  <li class="wip-card">
    <span class="wip-title">Lumpy Investment: a Micro-to-Macro FAVAR Approach</span>
    <span class="wip-coauthors">With Christoph Görtz, Sisir Ramanan and John Tsoukalas</span>
  </li>

  <li class="wip-card">
    <span class="wip-title">The Macroeconomic Implications of Debt-Distressed Firms</span>
    <span class="wip-coauthors">With Sisir Ramanan, Yannis Tsafos and John Tsoukalas</span>
  </li>

  <li class="wip-card">
    <span class="wip-title">Financing Lumpy Capacity Adjustments: Evidence from UK Firms</span>
    <span class="wip-coauthors">With Christoph Görtz and John Tsoukalas</span>
  </li>

</ul>

<h2>Policy Work</h2>

<ul class="paper-list">
  <li class="wip-card">
    <a href="https://scholar.google.com/citations?user=_G9RjuwAAAAJ&hl=en" target="_blank" rel="noopener" class="policy-link">ECB, European Commission, and Bruegel — Google Scholar ↗</a>
  </li>
</ul>