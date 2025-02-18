

NAME		= minishell

CFLAGS		= -g -Wall -Wextra -Werror

INC			= -I.

SRC			=	src/main.c \
				src/parser/init.c \
				src/parser/command.c \
				src/parser/quotes.c \
				src/parser/pipes_redirections.c \
				src/parser/parse.c \
				src/parser/parse_utils_1.c \
				src/parser/parse_utils_2.c \
				src/parser/env_var.c \
				src/parser/env_var_utils.c \
				src/parser/signal.c \
				src/parser/validating_pipes_reds.c \
				src/parser/executor_split.c \
				src/parser/executor_split_utils.c \
				src/executor/builtins/cd.c src/executor/builtins/echo.c src/executor/builtins/env.c src/executor/builtins/exit.c \
				src/executor/builtins/export.c src/executor/builtins/pwd.c src/executor/builtins/unset.c src/executor/execute.c \
				src/executor/exec_bin.c src/executor/builtins.c src/executor/redirection.c src/executor/clean.c src/executor/builtins/export2.c \
				src/executor/pipe.c src/executor/heredoc.c src/executor/utils.c src/executor/exec_bin2.c src/executor/builtins/cd_error.c src/free.c \

LIBFT		= libft/libft.a

OBJ			= $(SRC:.c=.o)

NO_COLOR	=\033[0m
BOLD		=\033[1m
RED			=\033[31;1m
GREEN		=\033[32;1m
YELLOW		=\033[33;1m
BLUE		=\033[34;1m

all: $(NAME)

$(NAME): $(OBJ) $(LIBFT)
	@echo "$(YELLOW)Compiling $(NAME)...$(NO_COLOR)"
	@gcc $(CFLAGS) $(INC) $(OBJ) $(LIBFT) -o $(NAME) -lreadline > /dev/null
	@echo "$(GREEN)Compilation of $(NAME) done!$(NO_COLOR)"

libft/libft.a:
	@echo "$(YELLOW)Compiling libft...$(NO_COLOR)"
	@make -s all -C libft > /dev/null
	@echo "$(GREEN)Compilation of libft done!$(NO_COLOR)"

%.o: %.c
	@echo "$(YELLOW)Compiling $<...$(NO_COLOR)"
	@gcc $(CFLAGS) $(INC) -c $< -o $@ > /dev/null

clean:
	@echo "$(YELLOW)Cleaning objects...$(NO_COLOR)"
	@rm -f $(OBJ) > /dev/null
	@make clean -C libft > /dev/null
	@echo "$(GREEN)Cleaning done.$(NO_COLOR)"

fclean: clean
	@echo "$(YELLOW)Cleaning executable...$(NO_COLOR)"
	@rm -f $(NAME) > /dev/null
	@make fclean -C libft > /dev/null
	@echo "$(GREEN)Cleaning done.$(NO_COLOR)"

re: fclean all

.PHONY: all clean fclean re