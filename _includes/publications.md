{% if site.data.publications.main.size > 0 %}
<h2 id="publications">Publications</h2>
<div class="publications">
  <ol class="bibliography">
    {% for paper in site.data.publications.main %}
    <li>
      <div class="pub-row{% unless paper.image %} without-image{% endunless %}">
        {% if paper.image %}
        <div class="col-sm-3 abbr">
          <img src="{{ paper.image | relative_url }}" class="teaser" alt="{{ paper.title | escape }} — overview" loading="lazy">
          {% if paper.conference_short %}<span class="badge">{{ paper.conference_short | escape }}</span>{% endif %}
        </div>
        {% endif %}
        <div class="col-sm-9 paper-details">
          <div class="title"><a href="{{ paper.arxiv | default: paper.pdf | escape }}">{{ paper.title | escape }}</a></div>
          <div class="author">{{ paper.authors }}</div>
          <div class="periodical"><em>{{ paper.conference | escape }}</em></div>
          <div class="links">
            {% if paper.pdf %}<a href="{{ paper.pdf | escape }}" class="btn" target="_blank" rel="noopener noreferrer" aria-label="PDF: {{ paper.title | escape }}">PDF</a>{% endif %}
            {% if paper.code %}<a href="{{ paper.code | escape }}" class="btn" target="_blank" rel="noopener noreferrer" aria-label="Code: {{ paper.title | escape }}">Code</a>{% endif %}
            {% if paper.page %}<a href="{{ paper.page | escape }}" class="btn" target="_blank" rel="noopener noreferrer" aria-label="Project page: {{ paper.title | escape }}">Project Page</a>{% endif %}
            {% if paper.bibtex %}<a href="{{ paper.bibtex | relative_url }}" class="btn" aria-label="BibTeX: {{ paper.title | escape }}">BibTeX</a>{% endif %}
          </div>
        </div>
      </div>
    </li>
    {% endfor %}
  </ol>
</div>
{% endif %}
