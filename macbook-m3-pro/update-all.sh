#!/bin/bash
yes | brew update && brew upgrade --greedy
yes | npm update -g
yes | claude update
yes | opencode upgrade
