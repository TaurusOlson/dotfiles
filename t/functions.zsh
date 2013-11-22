function t() {
    t.py --task-dir $DROP/org/tasks --list=todo.org --delete-if-empty $@
}

function tools() {
    t.py --task-dir $DROP/org/notes --list=tools.org --delete-if-empty $@
}

# BUGS {{{1
bugs() {
    [ $# -eq 0 ] && t.py --task-dir . --list=ISSUES --delete-if-empty -g BUG
    [ $# -gt 0 ] && t.py --task-dir . --list=ISSUES --delete-if-empty $@
}

bug-new() {
   t.py --task-dir . --list=ISSUES --delete-if-empty "BUG    : $@"
}

bugs-done() {
   t.py --task-dir . --list=ISSUES --delete-if-empty --done -g BUG
}

# FEATURES {{{1
features() {
    [ $# -eq 0 ] && t.py --task-dir . --list=ISSUES --delete-if-empty -g FEATURE
    [ $# -gt 0 ] && t.py --task-dir . --list=ISSUES --delete-if-empty $@
}

feature-new() {
   t.py --task-dir . --list=ISSUES --delete-if-empty "FEATURE: $@"
}

features-done() {
   t.py --task-dir . --list=ISSUES --delete-if-empty --done -g FEATURE
}

# NOTES {{{1
notes () {
	[ $# -eq 0 ] && t.py --task-dir . --list=ISSUES --delete-if-empty -g NOTE
	[ $# -gt 0 ] && t.py --task-dir . --list=ISSUES --delete-if-empty $@
}

note-new() {
   t.py --task-dir . --list=ISSUES --delete-if-empty "NOTE   : $@"
}

notes-done() {
   t.py --task-dir . --list=ISSUES --delete-if-empty --done -g NOTE
}


todo() {
    t.py --task-dir . --list=TODO --delete-if-empty "$@"
}


