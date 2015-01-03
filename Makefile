SRC_DIR	= src
NAME	= main
SRC		= $(NAME).tex

$(NAME):
	cd src && pdflatex -output-directory ../ $(SRC)

clean:
	rm -f $(NAME).out $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup

fclean: clean
	rm -f $(NAME).pdf
