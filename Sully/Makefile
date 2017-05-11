CC=clang
FLAGS=-Wall -Wextra -Werror

NAME=Sully

SRC=Sully.c

all:$(NAME)

$(NAME):$(SRC)
	@$(CC) $(FLAGS) $< -o $@
	@echo "$@ was created"

clean:
	@rm -f $(NAME)_*

fclean:clean
	@rm -f $(NAME)

re: fclean all
