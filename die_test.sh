#!/usr/bin/env roundup

# "contains list item" iff item in list
contains() {
    [[ $1 =~ $2 ]] && exit 0 || exit 1
}

describe "die: Rolls dice."

die="./die"

it_rolls_die() {
    $die 1d6 | grep -P '^[1-6]$'
}

it_rolls_dice() {
    $die 3d6 | grep -Pzo '(?s)[1-6].[1-6].[1-6]'
}

it_rolls_fairly() {
    local rolls=$($die 1000d2)
    local counts=$(echo $rolls | tr " " "\n" | sort | uniq -c)
    local one_count=$(echo $counts | grep -P '\d+ 1' | cut -f 1 -d ' ')
    test $one_count -ge 450 && test $one_count -le 550
}

it_changes_result() {
    test "$($die 100d6)" != "$($die 100d6)"
}

xit_shows_help_with_no_argv() {
  $spark | grep USAGE
}
