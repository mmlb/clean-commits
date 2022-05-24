#!/usr/bin/env bash


if git log | grep fixup
then
  exit 1
else
  exit 0
fi
