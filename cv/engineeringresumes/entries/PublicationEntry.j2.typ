{# Publications use the full text width; the standard date column is unnecessary. #}
#regular-entry(
  [ ],
  [ ],
  main-column-second-row: [
{% for line in entry.main_column.splitlines() %}
    {{ line|indent(4) }}

{% endfor %}
  ],
)
