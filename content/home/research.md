+++
# Describe my Research split into Working Papers and Work in Progress

date = "2016-04-20T00:00:00"
draft = false

title = "Research"
subtitle = ""

# Order that this section will appear in.
weight = 25
+++

<style>
.paper-list { list-style: none; padding: 0; display: flex; flex-direction: column; gap: 4px; margin-bottom: 2rem; }

.paper-card {
  border-radius: 6px;
  overflow: hidden;
  border: 0.5px solid rgba(128,128,128,0.25);
}

.paper-header {
  background: #1a2744;
  padding: 9px 14px;
  display: flex;
  align-items: center;
  gap: 10px;
}

.paper-icon {
  flex-shrink: 0;
  width: 15px;
  height: 15px;
  opacity: 0.85;
}

.paper-title-link {
  font-size: 14px;
  font-weight: 600;
  color: #ffffff !important;
  text-decoration: none !important;
  flex: 1;
  line-height: 1.35;
}

.paper-title-link:hover { text-decoration: underline !important; }

.paper-badges {
  display: flex;
  gap: 5px;
  flex-shrink: 0;
  align-items: center;
}

.ssrn-badge {
  display: inline-flex;
  align-items: center;
  gap: 4px;
  background: rgba(255,255,255,0.15);
  color: #ffffff !important;
  font-size: 11px;
  font-family: Lato, sans-serif;
  padding: 2px 7px;
  border-radius: 4px;
  text-decoration: none !important;
  white-space: nowrap;
  border: 0.5px solid rgba(255,255,255,0.3);
}

.ssrn-badge:hover { background: rgba(255,255,255,0.28) !important; }

.ssrn-badge svg { width: 10px; height: 10px; flex-shrink: 0; }

.pill-jmp {
  display: inline-block;
  font-size: 11px;
  font-family: Lato, sans-serif;
  font-weight: 600;
  padding: 2px 7px;
  border-radius: 4px;
  white-space: nowrap;
  background: rgba(250,200,100,0.25);
  color: #f5c842;
  border: 0.5px solid rgba(250,200,100,0.4);
}

.pill-rr {
  display: inline-block;
  font-size: 11px;
  font-family: Lato, sans-serif;
  font-weight: 600;
  padding: 2px 7px;
  border-radius: 4px;
  white-space: nowrap;
  background: rgba(80,200,130,0.2);
  color: #4fc88a;
  border: 0.5px solid rgba(80,200,130,0.35);
}

.paper-meta {
  background: #ffffff;
  padding: 6px 14px;
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  align-items: center;
  border-top: 0.5px solid rgba(128,128,128,0.15);
}

.meta-item {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  font-size: 12px;
  color: #555555;
  font-family: Lato, sans-serif;
}

.meta-item svg { width: 11px; height: 11px; flex-shrink: 0; opacity: 0.65; }

.wip-card {
  padding: 8px 14px;
  border-radius: 6px;
  border: 0.5px solid rgba(128,128,128,0.25);
  background: #ffffff;
  display: flex;
  flex-direction: column;
  gap: 2px;
}

.wip-title {
  font-size: 14px;
  font-weight: 600;
  color: #222222;
  font-family: Lato, sans-serif;
}

.wip-coauthors {
  font-size: 12px;
  color: #666666;
  font-family: Lato, sans-serif;
}

/* Dark mode overrides */
@media (prefers-color-scheme: dark) {
  .paper-meta { background: #1e2330; }
  .meta-item { color: #aaaaaa; }
  .wip-card { background: #1e2330; }
  .wip-title { color: #eeeeee; }
  .wip-coauthors { color: #999999; }
  .paper-card { border-color: rgba(255,255,255,0.1); }
  .paper-meta { border-color: rgba(255,255,255,0.08); }
  .wip-card { border-color: rgba(255,255,255,0.1); }
}
</style>

<!-- SVG defs reused across all icons -->
<svg width="0" height="0" style="position:absolute">
  <defs>
    <symbol id="ico-doc" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
      <polyline points="14 2 14 8 20 8"/>
      <line x1="16" y1="13" x2="8" y2="13"/>
      <line x1="16" y1="17" x2="8" y2="17"/>
      <polyline points="10 9 9 9 8 9"/>
    </symbol>
    <symbol id="ico-ext" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
      <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/>
      <polyline points="15 3 21 3 21 9"/>
      <line x1="10" y1="14" x2="21" y2="3"/>
    </symbol>
    <symbol id="ico-slides" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
      <rect x="2" y="3" width="20" height="14" rx="2"/>
      <line x1="8" y1="21" x2="16" y2="21"/>
      <line x1="12" y1="17" x2="12" y2="21"/>
    </symbol>
    <symbol id="ico-cal" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <rect x="3" y="4" width="18" height="18" rx="2"/>
      <line x1="16" y1="2" x2="16" y2="6"/>
      <line x1="8" y1="2" x2="8" y2="6"/>
      <line x1="3" y1="10" x2="21" y2="10"/>
    </symbol>
    <symbol id="ico-people" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/>
      <circle cx="9" cy="7" r="4"/>
      <path d="M23 21v-2a4 4 0 0 0-3-3.87"/>
      <path d="M16 3.13a4 4 0 0 1 0 7.75"/>
    </symbol>
  </defs>
</svg>

<h2>Working Papers</h2>

<ul class="paper-list">

  <li class="paper-card">
    <div class="paper-header">
      <svg class="paper-icon" stroke="white"><use href="#ico-doc"/></svg>
      <a href="/uploads/jm/jmp.pdf" target="_blank" rel="noopener" class="paper-title-link">Earnings Management and Investment</a>
      <div class="paper-badges">
        <span class="pill-jmp">Job Market Paper</span>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item">
        <svg><use href="#ico-cal"/></svg>
        Draft: October 2025
      </span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-header">
      <svg class="paper-icon" stroke="white"><use href="#ico-doc"/></svg>
      <a href="/uploads/jm/fiscal_news.pdf" target="_blank" rel="noopener" class="paper-title-link">Fiscal News and the Macroeconomy</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6303600" target="_blank" rel="noopener" class="ssrn-badge">
          <svg><use href="#ico-ext"/></svg>SSRN
        </a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item">
        <svg><use href="#ico-cal"/></svg>
        Draft: March 2026
      </span>
      <span class="meta-item">
        <svg><use href="#ico-people"/></svg>
        With Wolfram Horn
      </span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-header">
      <svg class="paper-icon" stroke="white"><use href="#ico-doc"/></svg>
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4980012" target="_blank" rel="noopener" class="paper-title-link">Making the Cut: Close Elections and Local Welfare Policy</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4980012" target="_blank" rel="noopener" class="ssrn-badge">
          <svg><use href="#ico-ext"/></svg>SSRN
        </a>
        <span class="pill-rr">R&amp;R EER</span>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item">
        <svg><use href="#ico-people"/></svg>
        With <a href="https://nikolajbroberg.org/" target="_blank" rel="noopener" style="color:inherit;">Nikolaj Broberg</a> and <a href="https://sites.google.com/view/tuulitahtinen/home" target="_blank" rel="noopener" style="color:inherit;">Tuuli Tähtinen</a>
      </span>
      <span class="meta-item">
        <svg><use href="#ico-cal"/></svg>
        March 2026
      </span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-header">
      <svg class="paper-icon" stroke="white"><use href="#ico-doc"/></svg>
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4478427" target="_blank" rel="noopener" class="paper-title-link">Job Search and the Threat of Unemployment Benefit Sanctions</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4478427" target="_blank" rel="noopener" class="ssrn-badge">
          <svg><use href="#ico-ext"/></svg>SSRN
        </a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item">
        <svg><use href="#ico-cal"/></svg>
        Draft: June 2023
      </span>
    </div>
  </li>

  <li class="paper-card">
    <div class="paper-header">
      <svg class="paper-icon" stroke="white"><use href="#ico-doc"/></svg>
      <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4009725" target="_blank" rel="noopener" class="paper-title-link">Sectoral Volatility and the Investment Channel of Monetary Policy</a>
      <div class="paper-badges">
        <a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4009725" target="_blank" rel="noopener" class="ssrn-badge">
          <svg><use href="#ico-ext"/></svg>SSRN
        </a>
        <a href="/uploads/pres/volatility_slides.pdf" target="_blank" rel="noopener" class="ssrn-badge">
          <svg><use href="#ico-slides"/></svg>Slides
        </a>
      </div>
    </div>
    <div class="paper-meta">
      <span class="meta-item">
        <svg><use href="#ico-people"/></svg>
        With <a href="https://www.ozgenozturk.com/" target="_blank" rel="noopener" style="color:inherit;">Ozgen Ozturk</a> — new draft coming soon
      </span>
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
    <span class="wip-coauthors">
      <a href="https://scholar.google.com/citations?user=_G9RjuwAAAAJ&hl=en" target="_blank" rel="noopener" style="color:#1565c0;">ECB, European Commission, and Bruegel — Google Scholar ↗</a>
    </span>
  </li>
</ul>