CC=clang
FLAGS=-Wall -Wextra -Werror

NAME=Grace

SRC=Grace.c

all:$(NAME)

$(NAME):$(SRC)
	$(CC) $(FLAGS) $< -o $@
	@echo "$@ was created"

run:$(NAME)
	./$(NAME)
	diff $(NAME).c $(NAME)_kid.c

clean:
	@rm -f $(NAME)_kid.c

fclean:clean
	@rm -f $(NAME)

re: fclean all
