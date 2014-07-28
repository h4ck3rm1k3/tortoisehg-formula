
#  https://launchpad.net/~tortoisehg-ppa/+archive/releases

include:
  - tortoisehg

tortoisehg-ppa:
  pkgrepo.managed:
    - humanname: tortoisehg-ppa-releases-{{ grains['oscodename'] }}
    - name: deb http://ppa.launchpad.net/tortoisehg-ppa/releases/ubuntu {{ grains['oscodename'] }} main
    - dist: {{ grains['oscodename'] }}
    - file: /etc/apt/sources.list.d/tortoisehg-ppa-releases-{{ grains['oscodename'] }}.list
    - keyid: D5056DDE  
    - keyserver: keyserver.ubuntu.com
    #- gpgcheck: 1
    #- gpgkey: 
    - require:
      - pkgrepo: mercurial-ppa
    - require_in:
      - pkg: tortoisehg

