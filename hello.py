#!/usr/bin/env python3.7

# flake8: noqa

# fmt: off
from datetime import timedelta
from decouple import config
from icecream import ic
from pathlib import Path
# fmt: on

"""
The commented out section is boilerplate for common operations.
Feel free to uncomment and/or delete after first commit.
"""

# env vars (hierarchy: args, env, .env)
HOST = config("HOST", default="localhost")
USERNAME = config("USERNAME", default="John")

## verbose icecream
ic.configureOutput(includeContext=True)

ic(f"Hello, {USERNAME}!")
