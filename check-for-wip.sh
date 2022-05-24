#!/usr/bin/env bash


if git log | grep WIP
then
  exit 1
else
  exit 0
fi
