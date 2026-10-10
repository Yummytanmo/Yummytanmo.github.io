{# Size the date column to its content so long award names keep the full width. #}
#regular-entry(
  [ ],
  [ ],
  main-column-second-row: [
    #grid(
      columns: (1fr, auto),
      column-gutter: 0.6cm,
      align: (left, right),
      [{{ entry.main_column.splitlines()[0] }}],
      [{{ entry.date_and_location_column }}],
    )
{% for line in entry.main_column.splitlines()[1:] %}
    {{ line|indent(4) }}

{% endfor %}
  ],
)
