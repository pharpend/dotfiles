#!/bin/sh
# 
# Applies the AGPL notice to every .hs file in the git tree!
# Copyright (C) 2015 Peter Harpending
# 
# Copying and distribution of this file, with or without modification, are
# permitted in any medium without royalty provided the copyright notice and this
# notice are preserved.  This file is offered as-is, without any warranty.


cwd=`pwd`
cd ..
files=`git ls-files|grep hs`
for f in $files; do
    dd if=$f of=/tmp/agpl.txt
    dd if=scripts/agpl-blob.txt of=$f
    dd if=/tmp/agpl.txt oflag=append conv=notrunc of=$f 
    dd if=$f
    printf "\n----\n%s" $f
    # read -r foo
done
cd $cwd

git diff
