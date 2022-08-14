#!/bin/bash

https=$1

y=${https%.git}

name=${y##*/}

git clone "$https"

mv "main.cpp" "$name/main.cpp"

cd "$name"

git add "main.cpp"

git commit "--allow-empty-message" "-m' '"

expect gitpush.exp
