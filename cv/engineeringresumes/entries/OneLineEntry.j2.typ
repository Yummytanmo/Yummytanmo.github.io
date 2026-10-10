{# Align expertise labels and wrapped descriptions in two columns. #}
#grid(
  columns: (1.8cm, 1fr),
  column-gutter: 0.3cm,
  align: left,
  [{{ entry.main_column.splitlines()[0] }}],
  [
{% for line in entry.main_column.splitlines()[1:] %}
    {{ line|indent(4) }}
{% endfor %}
  ],
)
