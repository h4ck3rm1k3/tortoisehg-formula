
{% from "tortoisehg/map.jinja" import tortoisehg with context %}

tortoisehg:
  pkg:
    - installed
    - name: {{ tortoisehg.pkg }}
