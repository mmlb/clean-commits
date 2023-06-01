#!/usr/bin/env bash

base=${1:-main}
dirtywords=(
	dnm
	"do not merge"
	do-not-merge
	fixup!
	squash!
	wip
	"work in progress"
	work-in-progress
)
regexp="($(printf "%s|" "${dirtywords[@]}" | sed 's/|$//'))"
! git log --color=always --extended-regexp --grep="$regexp" --regexp-ignore-case "$base.." | grep '.'
