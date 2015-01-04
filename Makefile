SRC_DIR	= src
NAME	= Analyse.III
SRC		= $(NAME).tex

$(NAME):
	cd src && pdflatex -output-directory ../ $(SRC)

tar: fclean $(NAME)
	$(MAKE) $(NAME)
	$(MAKE) clean
	zip -r $(NAME).zip . -x *.git*

clean:
	rm -f $(NAME).out $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup $(NAME).zip

fclean: clean
	rm -f $(NAME).pdf
