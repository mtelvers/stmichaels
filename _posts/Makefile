
%.md: %.docx
	pandoc --extract-media=. $< -o $@
	sed -i 's/\xC2\xA0/ /g' $@
	sed -i -e 's/\^//g' $@
	new=$$(basename $@ .md)-news.md && echo $$new && sed -e '1,/ST MICHAEL/d' $@ > $$new
	sed -i -e '/ST MICHAEL/,$$d' $@

SRC = $(wildcard *.docx)
OBJS = $(patsubst %.docx, %.md, $(SRC))
all:	$(OBJS)

