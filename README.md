# CIS
C(ontinuous) I(ntegration) S(ystem)
==========
This is intended to become a continuous integration system, allowing
bleeding-edge source packages to be installed automatically. For now, it barely
compiles things.

----------
CHECKOUT:

`git clone git://github.com/InnovAnon-INC/CIS.git`

`cd CIS`

----------
INSTALL:

`make clean` # if this isn't a fresh checkout

`make`

`make install`

==========
USE:

(re-install self:)

cat > /mnt/home/cnfs/CIS << "EOF"

URL=git://github.com/InnovAnon-Inc/CIS.git

COMPILE=simple

BLD=$SRC

CIS_INSTALL=simple

TEST=none

EOF

DEV=home compile CIS

----------
(compile librestart:)

cat > /mnt/home/cnfs/restart << "EOF"

URL=git://github.com/InnovAnon-INC/restart.git

TEST=none

EOF

DEV=home compile restart

==========
BUGS

oops I borked it. don't use this

(currently being discovered ;))

----------
[![CircleCI](https://img.shields.io/circleci/build/github/InnovAnon-Inc/CIS?color=%23FF1100&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://circleci.com/gh/InnovAnon-Inc/CIS)
[![Repo Size](https://img.shields.io/github/repo-size/InnovAnon-Inc/CIS?color=%23FF1100&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://github.com/InnovAnon-Inc/CIS)
[![LoC](https://tokei.rs/b1/github/InnovAnon-Inc/CIS?category=code)](https://github.com/InnovAnon-Inc/CIS)
[![CodeFactor](https://www.codefactor.io/repository/github/InnovAnon-Inc/CIS/badge)](https://www.codefactor.io/repository/github/InnovAnon-Inc/CIS)

[![Latest Release](https://img.shields.io/github/commits-since/InnovAnon-Inc/CIS/latest?color=%23FF1100&include_prereleases&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://github.com/InnovAnon-Inc/CIS/releases/latest)
![Dependencies](https://img.shields.io/librariesio/github/InnovAnon-Inc/CIS?color=%23FF1100&style=plastic)

[![License Summary](https://img.shields.io/github/license/InnovAnon-Inc/CIS?color=%23FF1100&label=Free%20Code%20for%20a%20Free%20World%21&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://tldrlegal.com/license/unlicense#summary)

![Corporate Logo](https://i.imgur.com/UD8y4Is.gif)

