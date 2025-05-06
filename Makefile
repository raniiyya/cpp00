NAME = megaphone
CC = c++
FLAGS = -Wall -Wextra -Werror -std=c++98
RM = rm -f

SRC = megaphone.cpp
OBJ = $(SRC:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(FLAGS) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean:
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re