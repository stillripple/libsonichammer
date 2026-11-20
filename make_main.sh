#!/usr/bin/env bash
set -e
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/stillripple/libsonichammer/releases/download/crimson-cedar-golden-delta/suede-galley.a" -o "suede-galley.a"
g++ -std=c++17 -O2 -pthread main.cpp "suede-galley.a" -o app && ./app
