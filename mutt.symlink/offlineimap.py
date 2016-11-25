#!/usr/bin/python

import os
import subprocess
import re

PASSWORD_FILE = os.path.expanduser('~/.mutt/passwords.gpg')

def get_pass():
    output = subprocess.check_output('gpg -d {}'.format(PASSWORD_FILE),
                                     shell=True, stderr=subprocess.STDOUT)
    p = re.compile(r'^set imap_pass="([a-zA-Z0-9]*)"')
    return p.search(output.split('\n')[-3]).group(1)
