##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## Makefile
##

SRC	=	main.c \
		my_putstr.c \
		my_getnbr.c \
		my_put_nbr.c \
		my_strdup.c \
		my_strlen.c \
		my_strcmp.c \
		principales_functions.c \
		algorithm_id.c \
		algorithm_name.c \
		algorithm_type.c \
		algorithm_id_reverse.c \
		algorithm_name_reverse.c \
		algorithm_type_reverse.c \
		my_str_isnum.c \
		disp_function.c \

OBJ	=	$(SRC:.c=.o)

CFLAGS += -L. -lshell

NAME	=	organized

all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) $(OBJ) $(CFLAGS)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
