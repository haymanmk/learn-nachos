#!/usr/bin/env bash
BASEDIR=$(dirname $0)

cd ${BASEDIR}

make clean

cp "./ports/x86.linux" "./Makefile.dep" || exit 1

make 2>&1 | tee make.log
