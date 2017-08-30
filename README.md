This is intended to become a continuous integration system, allowing
bleeding-edge source packages to be installed automatically. For now, it barely
compiles things.

=====

CHECKOUT:

git clone git://github.com/InnovAnon-INC/CIS.git

cd CIS

-----

INSTALL:

make clean # if this isn't a fresh checkout

make

make install

-----

USE:

cat > /mnt/home/cnfs/restart << "EOF"

URL=git://github.com/InnovAnon-INC/restart.git

TEST=none

EOF

DEV=home compile restart

-----

BUGS

(currently being discovered ;))
