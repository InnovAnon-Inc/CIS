PREFIX?=/usr/local
BINDIR?=bin
DESTDIR?=
V?=-v

.PHONY: all install clean-tgt

MAKEFLAGS=-j1
#SRCSX=$(filter-out Makefile README.md LICENSE, $(wildcard *))
#SRCS=$(SRCSX:=.x)
#SRCS=$(filter-out *.x Makefile README.md LICENSE, $(wildcard *))
SRCS=$(filter-out Makefile README.md LICENSE, $(wildcard *))

#all: $(SRCS) unpack.txz
#all: $(SRCS:=.x) unpack.txz
all: unpack.txz
	@echo Success! :\)

#unpack.txz: $(SRCS)
unpack.txz: $(SRCS:=.x)
	V=$V ./pack `readlink -f .`/$@
#	V=$V `readlink -f .`/pack `readlink -f .`/$@
%.x: %
	shc $V -D -i -exu -f $^
	strip --strip-all $@
	chmod $V -w $@
#	shc $V -i -cex -f $^
#	test ! `command -v upx-ucl` || \
#	upx-ucl --all-filters --ultra-brute $@
#	chmod $V -w $@

#install: $(DESTDIR)/$(PREFIX)/$(BINDIR)
#	install $V unpack{,.txz} $<
#$(DESTDIR)/$(PREFIX)/$(BINDIR):
# 	mkdir $V $@
install:
	test -d  $(DESTDIR)/$(PREFIX)/$(BINDIR) || \
	mkdir $V -p $(DESTDIR)/$(PREFIX)/$(BINDIR)
	ln $V -fs `pwd`/compile.x $(DESTDIR)/$(PREFIX)/$(BINDIR)/compile
	#install $V unpack{,.txz} $(DESTDIR)/$(PREFIX)/$(BINDIR)
	#ln $V -fs `pwd`/compile.x $(DESTDIR)/$(PREFIX)/$(BINDIR)/compile
uninstall:
	rm $V -f $(DESTDIR)/$(PREFIX)/$(BINDIR)/compile.x
	#rm $V -f $(DESTDIR)/$(PREFIX)/$(BINDIR)/compile

clean-tgt:
	-chmod $V +w *.x *.x.c unpack.txz
	rm $V -f *.x *.x.c unpack.txz
	#rm $V -f *.x{,.c} unpack.txz
