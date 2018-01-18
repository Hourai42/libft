# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ttran <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/29 15:39:27 by ttran             #+#    #+#              #
#    Updated: 2018/01/17 23:13:24 by ttran            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
CC = gcc
OBJ = ft_strrchr.o ft_putstr.o ft_strcmp.o ft_strlcat.o ft_memcpy.o \
ft_strequm.o ft_memmove.o ft_strsplit.o ft_strncpy.o ft_lstmap.o \
ft_lstadd.o ft_striter.o ft_strstr.o ft_isdigit.o ft_putnbr.o \
ft_memccpy.o ft_strdel.o ft_nmbwrd.o ft_memchr.o ft_bzero.o \
ft_isalnum.o ft_putstr_fd.o ft_lstiter.o ft_lstdelone.o ft_toupper.o \
ft_strcpy.o ft_lstnew.o ft_strdup.o ft_putnbr_fd.o ft_striteri.o \
ft_strmap.o ft_putendl_fd.o ft_memdel.o ft_strnstr.o ft_putchar.o \
ft_isascii.o ft_strlen.o ft_strsub.o ft_strnew.o ft_memalloc.o ft_putendl.o \
ft_strncat.o ft_itoa.o ft_strncmp.o ft_memcmp.o ft_strtrim.o ft_strequ.o \
ft_putchar_fd.o ft_memset.o ft_isalpha.o ft_strcat.o ft_tolower.o \
ft_strnequ.o ft_strjoin.o ft_atoi.o ft_strclr.o ft_strmapi.o \
ft_isprint.o ft_lstdel.o ft_strchr.o ft_mallocwrd.o ft_countplace.o \
ft_isprime.o ft_hassqrt.o ft_fibonacci.o ft_recursive_power.o \
ft_recursive_factorial.o get_next_line.o

all: $(NAME)

$(NAME): 
	@$(CC) $(FLAGS) -c $(OBJ:.o=.c)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re
