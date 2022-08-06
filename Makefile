# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmeulema <jmeulema@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/16 17:42:28 by jmeulema          #+#    #+#              #
#    Updated: 2022/08/03 13:00:03 by jmeulema         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

RM = rm -rf
CC = gcc
FLAGS = -Wall -Wextra -Werror

INC = \
			ft_printf.h \

SRC = \
			ft_putchar.c \
			ft_itoa.c \
			ft_strdup.c \
			ft_putstrlen.c \
			ft_strlen.c \
			
SRCS = $(SRC)
OBJS = $(addsuffix .o, $(basename $(SRC)))

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