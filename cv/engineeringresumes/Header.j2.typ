{% if locale.language == "mandarin_chinese" %}
{# Serif body, sans-serif Chinese emphasis, and serif Latin paper titles. #}
#show strong: set text(font: ("XCharter", "Noto Sans SC"))

{% endif %}
= {{ cv.name }}

#headline([{{ cv.headline }}])

#connections(
  [#link("mailto:{{ cv.email }}")[#text("{{ cv.email }}")]],
  [#link("{{ cv.website }}")[Website]],
{% for social in cv.social_networks %}
{% if social.network == "GitHub" %}
  [#link("https://github.com/{{ social.username }}")[GitHub]],
{% elif social.network == "Google Scholar" %}
  [#link("https://scholar.google.com/citations?user={{ social.username }}")[Google Scholar]],
{% endif %}
{% endfor %}
)
