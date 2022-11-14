# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vstockma <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/05 11:20:33 by vstockma          #+#    #+#              #
#    Updated: 2022/10/20 14:48:25 by vstockma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
      ft_tolower.c ft_toupper.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_strnstr.c \
      ft_strlcpy.c ft_strlcat.c ft_atoi.c ft_memset.c ft_memcpy.c ft_memmove.c \
      ft_memchr.c ft_memcmp.c ft_bzero.c ft_calloc.c ft_strdup.c \
      ft_substr.c ft_strjoin.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
      ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strtrim.c
      
BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c ft_lstclear.c ft_lstiter.c

OBJ = $(SRC:.c=.o)

OBJBONUS = $(BONUS:.c=.o)

CFLAGS = -Wall -Werror -Wextra

CC = cc

RM = rm -f

.c.o:
	$(CC) $(CFLAGS) -g -c $< -o $(<:.c=.o)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(OBJBONUS)
	ar rcs $(NAME) $(OBJBONUS)

all: $(NAME)

clean:
	$(RM) $(OBJ) $(OBJBONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all