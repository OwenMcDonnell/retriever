#!/bin/sh
set -e

pip install -r requirements.txt
pip install -e .
pip install codecov -U
pip install pytest-cov -U
pip install pytest-xdist -U
  # Use pytest 3.9.3 version since 3.10.0 has a bug
pip install pytest==3.9.3 -U

exec "$@"
