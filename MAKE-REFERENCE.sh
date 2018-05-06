#!/usr/bin/env bash

if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

if [ -f requirements3.txt ]; then
    pip3 install -r requirements3.txt
fi

python3 make_reference.py