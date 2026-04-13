PREFIX = /usr/local

rv: rv.sh rv.awk rv.tsv
	cat rv.sh > $@
	echo 'exit 0' >> $@
	echo '#EOF' >> $@
	tar czf - rv.awk rv.tsv >> $@
	chmod +x $@

test: rv.sh
	shellcheck -s sh rv.sh

clean:
	rm -f rv

install: rv
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f rv $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/rv

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/rv

.PHONY: test clean install uninstall
