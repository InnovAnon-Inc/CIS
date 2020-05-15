PREFIX?=/usr/local
BINDIR?=bin
DESTDIR?=
V?=-v

.PHONY: all install clean

SRCS=$(filter-out Makefile README.md LICENSE, $(wildcard *))

all: $(SRCS:=.x) unpack.txz
	@echo Success! :\)

unpack.txz: $(SRCS:=.x)
	V=$V ./pack `readlink -f .`/$@
%.x: %
	shc $V -i -cex -f $^
	strip --strip-all $@
	test ! `command -v upx-ucl` || \
	upx-ucl --all-filters --ultra-brute $@

#install: $(DESTDIR)/$(PREFIX)/$(BINDIR)
#	install $V unpack{,.txz} $<
#$(DESTDIR)/$(PREFIX)/$(BINDIR):
# 	mkdir $V $@
install:
	test -d  $(DESTDIR)/$(PREFIX)/$(BINDIR) || \
	mkdir $V -p $(DESTDIR)/$(PREFIX)/$(BINDIR)
	#install $V unpack{,.txz} $(DESTDIR)/$(PREFIX)/$(BINDIR)
	ln $V -fs `pwd`/compile $(DESTDIR)/$(PREFIX)/$(BINDIR)
uninstall:
	rm $V -f $(DESTDIR)/$(PREFIX)/$(BINDIR)/compile

clean:
	rm $V -f *.x *.x.c unpack.txz
	#rm $V -f *.x{,.c} unpack.txz
