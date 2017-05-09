CC=clang
FLAGS=-Wall -Wextra -Werror

NAME=Grace

SRC=Grace.c

all:$(NAME)

$(NAME):$(SRC)
	@$(CC) $(FLAGS) $< -o $@
	@echo "$@ was created"

clean:

fclean:clean
	@rm -f $(NAME)

re: fclean all
