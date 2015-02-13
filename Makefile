SRC_DIR	= src
NAME	= Analyse.III
SRC		= $(NAME).tex
CP_DIR	= ~/Clouds/Dropbox/BA3/Analyse.III.Finet

$(NAME):
	cd src && pdflatex -output-directory ../ $(SRC)
	cd src && pdflatex -output-directory ../ $(SRC)

zip: fclean $(NAME)
	$(MAKE) clean
	zip -r $(NAME).zip . -x *.git*

cp: zip
	cp $(NAME).zip $(CP_DIR)
	cp $(NAME).pdf $(CP_DIR)

clean:
	rm -f $(NAME).out $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup $(NAME).zip

fclean: clean
	rm -f $(NAME).pdf
