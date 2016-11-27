#!/bin/bash
telnet 127.0.0.1 $1 << EOF
calc
EOF
