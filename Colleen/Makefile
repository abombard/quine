CC=clang
FLAGS=-Wall -Wextra -Werror

NAME=Colleen

SRC=Colleen.c

all:$(NAME)

$(NAME):$(SRC)
	@$(CC) $(FLAGS) $< -o $@
	@echo "$@ was created"

run:$(NAME)
	./$(NAME) > out.c
	diff $(NAME).c out.c

clean:
	@rm -f out.c

fclean:clean
	@rm -f $(NAME)

re: fclean all
