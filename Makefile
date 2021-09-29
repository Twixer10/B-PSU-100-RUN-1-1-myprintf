##
## EPITECH PROJECT, 2020
## makefile exe
## File description:
## fct
##

SRC	=	$(wildcard *.c)

CFLAGS	=	-W -Wextra -Wall -Werror -g3

LFLAGS	=	-L lib/ -lmy

IFLAGS	=	-I include/

NAME	=	printf

all:
	make -C lib/my all

clean:
	make -C lib/my clean
	rm -f *~
	rm -f *.o

fclean:
	make -C lib/my fclean
	rm -f $(NAME)
	rm -f *.a

re:	fclean all
	make -C lib/my re
