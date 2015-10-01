#!/bin/sh
#
# This script assembles the vim-hashicorp-tools plugin from git checkouts
# of the constituent plugins, which are assumed to exist in the same
# directory as vim-hashicorp-tools.
for r in consul nomadproject ottoproject packer terraform vagrant \
         vaultproject ; do
  for d in doc ftdetect indent plugin syntax; do
    if [[ -d ../vim-${r}/${d} ]]; then
      rsync -a ../vim-${r}/${d} .
    fi
  done
done
