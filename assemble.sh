#!/bin/sh
# WHAT: This script assembles the vim-hashicorp-tools plugin from git checkouts
#       of the constituent plugins, which are assumed to exist in the same
#       directory as vim-hashicorp-tools.

BLD=$(tput bold)
RST=$(tput sgr0)

for REPO in consul nomadproject ottoproject packer terraform vagrant vaultproject; do
    # Clone all the repositories just incase we didn't have them
    if [ ! -d "../vim-${REPO}" ]; then
        echo "${BLD}INFO: Cloning vim-${REPO}${RST}"
        git clone git@github.com:hashivim/vim-${REPO} ../vim-${REPO}
    fi

    # We only want to assemble off of master
    if [ $(cd ../vim-${REPO} && git rev-parse --abbrev-ref HEAD) != "master" ]; then
        echo "${BLD}WARN: Repository vim-${REPO} did not have the master branch checked out. To get that branchs changes back, run \`stash pop\`.${RST}"
        git stash
        git checkout master
        git pull
    fi

    # Hashicorp tools ASSEMBLE!
    echo "${BLD}INFO: Assembling ../vim-${REPO} into this repository.${RST}"
    rsync --archive \
        --exclude=.git \
        --exclude=*.md \
        --exclude=LICENSE \
        --exclude=*.rb \
        --exclude=*.sh \
        --exclude=.travis.yml \
        --exclude=Makefile \
        --exclude=test/ \
        --exclude=vader.vim/ \
        ../vim-${REPO}/ .
done

echo "${BLD}INFO: Done!${RST}"
git status
