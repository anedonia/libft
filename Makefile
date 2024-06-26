# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldevy <ldevy@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/03 15:27:12 by ldevy             #+#    #+#              #
#    Updated: 2024/06/19 20:11:26 by ldevy            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_substr.c ft_strncmp.c ft_atoi.c ft_split.c ft_strchr.c ft_putchar_fd.c ft_putnbr_fd.c ft_itoa.c ft_memcmp.c ft_strlcpy.c ft_strlcat.c ft_strrchr.c ft_memset.c ft_strdup.c ft_calloc.c ft_toupper.c ft_putendl_fd.c ft_isdigit.c ft_strtrim.c ft_strlen.c ft_isprint.c ft_memcpy.c ft_strmapi.c ft_tolower.c ft_strnstr.c ft_putstr_fd.c ft_bzero.c ft_striteri.c ft_isalnum.c ft_isalpha.c ft_memchr.c ft_memmove.c ft_strjoin.c ft_isascii.c 
SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
NAME = libft.a

CC = gcc

FLAGS = -Wall -Werror -Wextra

OBJ = ${SRC:.c=.o}
OBJ_BONUS = ${SRC_BONUS:.c=.o}

all:	${NAME}

${NAME}:	${OBJ}
	ar -rcs ${NAME} ${OBJ}

bonus: ${OBJ} ${OBJ_BONUS}
	ar -rcs ${NAME} ${OBJ} ${OBJ_BONUS}
	
.c.o:
	@${CC} ${FLAGS} -I includes -c $< -o ${<:.c=.o}

clean: 
	rm -f ${OBJ} ${OBJ_BONUS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re 
