# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cedmulle <cedmulle@student.42lausanne.c    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/13 15:44:46 by cedmulle          #+#    #+#              #
#    Updated: 2023/12/18 14:11:16 by cedmulle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ---------------------------------------------------------------------------- #
# 								Variables									   #
# ---------------------------------------------------------------------------- #
NAME	= libftprintf.a
SRC		= ft_printf.c ft_printf_utils.c
OBJDIR	= obj/
OBJ		= $(patsubst %.c,$(OBJDIR)%.o,$(SRC))
CFLAGS	= -Wall -Werror -Wextra
HEAD	= ft_printf.h
CC		= gcc
AR		= ar rcs
RM		= rm -rf
# ---------------------------------------------------------------------------- #
# 									Regles								       #
# ---------------------------------------------------------------------------- #
all:			${NAME}

${NAME}:		${OBJ}
			@${AR} ${NAME} ${OBJ}
			@echo "\033[1;36mCompilation successful.\033[0m"

$(OBJDIR)%.o:	%.c ${HEAD}
			@mkdir -p $(@D)
			@${CC} ${CFLAGS} -c $< -o $@

clean:
			@${RM} ${OBJDIR}
			@echo "\033[1;35mObjects files deleted.\033[0m"

fclean:			clean
			@${RM} ${NAME}
			@echo "\033[1;35m${NAME} deleted.\033[0m"

re:				fclean all

norme:
			@norminette