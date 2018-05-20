#!/bin/bash

set -e 


# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv && cd ~/.rbenv && src/configure && make -C src 

# ruby-build
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build 2> /dev/null
