##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile
##

SRC	=	$(wildcard *.c) \
		$(wildcard village_instances/*.c) \
		$(wildcard player/*.c) \
		$(wildcard attack/*.c) \
		$(wildcard menu/*.c) \
		$(wildcard quest_first/*.c)

OBJ	=	$(SRC:.c=.o)

NAME	= 	my_rpg

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) -l c_graph_prog $(SRC)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all
