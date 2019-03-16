gcc_8_repo:
  pkgrepo.managed:
    - ppa: ubuntu-toolchain-r/test
  pkg.installed:
    - pkgs:
      - gcc-8
