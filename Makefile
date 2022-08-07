# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmeulema <jmeulema@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/16 17:42:28 by jmeulema          #+#    #+#              #
#    Updated: 2022/08/07 13:57:28 by jmeulema         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

RM = rm -rf
CC = gcc
FLAGS = -Wall -Wextra -Werror

INC = \
			ft_printf.h \

SRCS = \
			SRC/ft_print_hexa.c \
			SRC/ft_print_ptr.c \
			SRC/ft_print_unsigned.c \
			SRC/ft_printf_utils.c \
			SRC/ft_printf.c \
			
OBJS = $(SRCS:.c=.o)

INCS = $(addprefix -I, $(INC))

all : $(NAME)

$(NAME) : $(OBJS)
		ar rcs $@ $^

clean :
		$(RM) $(OBJS)

fclean : clean 
		$(RM) $(NAME)

re : fclean all

.c.o: $(SRCS)
		$(CC) $(FLAGS) -c -o $@ $<