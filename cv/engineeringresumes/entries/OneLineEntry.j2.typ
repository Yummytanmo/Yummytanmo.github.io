{# Keep each expertise phrase together within a narrower description column. #}
#block(width: 15.5cm)[
  #grid(
    columns: (1.8cm, 1fr),
    column-gutter: 0.3cm,
    align: left,
    [{{ entry.main_column.splitlines()[0] }}],
    [
{% for line in entry.main_column.splitlines()[1:] %}
{% for phrase in line.split(', ') %}
      #box[{{ phrase }}{% if not loop.last %},{% endif %}]
{% endfor %}
{% endfor %}
    ],
  )
]
