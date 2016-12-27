{% from "telegraf/map.jinja" import os_map with context %}

telegraf-repo:
  pkgrepo.managed:
    {%- for key, value in os_map.items() %}
    - {{ key }}: {{ value }}
    {%- endfor %}

telegraf-install:
  pkg.installed:
    - name: telegraf
    - require:
      - pkgrepo: telegraf-repo
