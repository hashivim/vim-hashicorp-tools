# Call For Maintainers

This plugin, along with others like it, is now maintained by the
[HashiVim](http://hashivim.github.io/) organization, which is looking for
additional maintainers and contributors. See the HashiVim home page for
further information.

# vim-hashicorp-tools

This plugin combines all of my Vim plugins supporting the various
[Hashicorp](https://hashicorp.com) tools into one plugin, for people who
are likely to use more than one or two of them and want a one-stop shop.
The individual plugins are:

-   [vim-consul](https://github.com/hashivim/vim-consul)
-   [vim-nomadproject](https://github.com/hashivim/vim-nomadproject)
-   [vim-ottoproject](https://github.com/hashivim/vim-ottoproject)
-   [vim-packer](https://github.com/hashivim/vim-packer)
-   [vim-terraform](https://github.com/hashivim/vim-terraform)
-   [vim-vagrant](https://github.com/hashivim/vim-vagrant)
-   [vim-vaultproject](https://github.com/hashivim/vim-vaultproject)

Please see the individual repositories above for further information
on each one. This repository is created by brute-force combining the
others with the `assemble.sh` script, so please file any issues or pull
requests against the individual repos, not this one. Thanks.

## Installation

With [pathogen.vim](https://github.com/tpope/vim-pathogen) just do:

    cd ~/.vim/bundle
    git clone https://github.com/hashivim/vim-hashicorp-tools.git

If you prefer to use something besides pathogen, go ahead.

## Credits

See individual repositories for credits for the code contained within
them. The code to assemble them in this repo was written by Mark Cornick
<https://www.markcornick.com/>. Licensed under the ISC license.

Hashicorp is a trademark of Hashicorp. The capital of Djibouti is
Djibouti.

This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Contributor
Covenant](http://contributor-covenant.org) code of conduct.
