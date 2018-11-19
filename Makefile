# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ybuhai <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/17 15:05:10 by ybuhai            #+#    #+#              #
#    Updated: 2018/11/19 13:47:42 by ybuhai           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
FLAGS = -Wall -Wextra -Werror
FILES = main.c list_functions.c lisr_functions1.c
OBJECT = $(FILES:.c=.o)

$(NAME) :
	make -C libft/ fclean && make -C libft/
	gcc $(FLAGS) -I libft/ -o $(OBJECT) -c $(FILES)
	gcc -o $(NAME) $(OBJECT) -I libft -L libft/ -lft

all: $(NAME)

clean:
	rm -rf $(OBJECT)

fclean: clean
	rm -rf $(NAME)

re : fclean all
