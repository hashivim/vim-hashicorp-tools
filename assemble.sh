#!/bin/sh
#
# This script assembles the vim-hashicorp-tools plugin from git checkouts
# of the constituent plugins, which are assumed to exist in the same
# directory as vim-hashicorp-tools.
for r in consul nomadproject ottoproject packer terraform vagrant \
         vaultproject ; do
  rsync --archive \
    --exclude=.git \
    --exclude=*.md \
    --exclude=LICENSE \
    --exclude=*.rb \
   ../vim-${r}/ .
done
