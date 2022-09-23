# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mohazerr <mohazerr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/24 20:15:20 by apuchill          #+#    #+#              #
#    Updated: 2022/09/23 18:04:03 by mohazerr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

DIR_SRCS	=	srcs
DIR_OBJS	=	objs

SRCS 		= 	$(DIR_SRCS)/ft_putchar.c \
$(DIR_SRCS)/ft_putnbr.c \
$(DIR_SRCS)/ft_putstr.c \
$(DIR_SRCS)/ft_ptf_strlen.c \
$(DIR_SRCS)/ft_ptf_uiputnbr.c \
$(DIR_SRCS)/ft_printf.c \
$(DIR_SRCS)/ft_utils.c \

OBJS		=	$(subst $(DIR_SRCS), $(DIR_OBJS), $(SRCS:.c=.o))
SOURCES_PREFIXED = $(addprefix $(DIR_SRCS), $(SRCS))

INCLUDES	=	-I includes

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror

$(DIR_OBJS)/%.o :	$(DIR_SRCS)/%.c
			@mkdir -p $(DIR_OBJS)
			@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

all:		$(NAME)

$(NAME):	$(OBJS)
			@ar -rcs $(NAME) $(OBJS)
			@ranlib $(NAME)

clean:
			@rm -f $(OBJS)
			@rm -r $(DIR_OBJS)

fclean:		clean
			@rm -f $(NAME)

re:			fclean all