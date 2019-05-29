NAME		=	libfts.a

SRC			=	\
ft_hw.s \
ft_test.s \
ft_isalpha.s \
ft_isdigit.s \
ft_isupper.s \
ft_islower.s \
ft_isalnum.s \
ft_isascii.s \
ft_isprint.s \
ft_isspace.s \
ft_toupper.s \
ft_tolower.s \
ft_puts.s \
ft_bzero.s \
ft_strcat.s \
ft_strlen.s \
ft_memset.s \
ft_memcpy.s \
ft_strdup.s \
ft_cat.s

SRC_D		=	src/
OBJ_D		=	obj/
OBJ_P		=	$(addprefix $(OBJ_D), $(SRC:.s=.o))

UNIT_TEST	=	libtest/
UNIT_EXEC	=	libftASM_tester

CC			=	nasm
FLAGS		=	-f macho64

all: $(NAME)

$(NAME): $(OBJ_D) $(OBJ_P)
			@ar rcs $(NAME) $(OBJ_P)
			@printf "$(OVERRIDE)$(CYAN)$(PROJECT) | $(GREEN)⌛  source to object files...\t💯 ️ done creating object files$(WHITE)\n"
			@printf "$(CYAN)$(PROJECT) | $(GREEN)🆗  static lib created from object files$(WHITE)\n"

$(OBJ_D)%.o: $(SRC_D)%.s
			@$(CC) $(FLAGS) $< -o $@
			@printf "$(OVERRIDE)$(CYAN)$(PROJECT) | $(GREEN)⌛  source to object files... $(YELLOW)%*s$(WHITE)" $(CURSOR_R) "$< "

$(OBJ_D):
	@mkdir -p $(OBJ_D)
	@mkdir -p $(dir $(OBJ_P))
	@echo "$(CYAN)$(PROJECT) | $(GREEN)🆗  object directories created$(WHITE)"

# cosmetic rules
WHITE		=	`echo "\033[0m"`
CYAN		=	`echo "\033[36m"`
GREEN		=	`echo "\033[32m"`
RED			=	`echo "\033[31m"`
YELLOW		=	`echo "\033[33m"`
OVERRIDE	=	`echo "\r\033[K"`
CURSOR_R	=	`echo "$$(tput cols) - 39"|bc`
PROJECT		=	"LIBFTASM"

light_test:	$(NAME)
			@gcc main.c -L./ -lfts -o light_test
			@./light_test

test:		$(NAME)
			@make -C $(UNIT_TEST)
			@./$(UNIT_TEST)/$(UNIT_EXEC)

testception: $(NAME)
			@make -C $(UNIT_TEST)
			@./$(UNIT_TEST)/$(UNIT_EXEC) --test

clean:
			@make -C $(UNIT_TEST) clean
			@echo "$(CYAN)$(PROJECT) | clean $(RED)❌  $(UNIT_TEST) object files cleaned$(WHITE)"
			@rm -rf $(OBJ_D)
			@rm -rf $(UNIT_EXEC)
			@echo "$(CYAN)$(PROJECT) | clean $(RED)❌  object files cleaned$(WHITE)"

fclean:
			@make -C $(UNIT_TEST) fclean
			@echo "$(CYAN)$(PROJECT) | fclean $(RED)❌  test lib ($(UNIT_EXEC)) cleaned$(WHITE)"
			@rm -rf $(NAME)
			@echo "$(CYAN)$(PROJECT) | fclean $(RED)❌  static lib ($(NAME)) cleaned$(WHITE)"
			@rm -rf $(OBJ_D)
			@rm -rf light_test
			@echo "$(CYAN)$(PROJECT) | fclean $(RED)❌  object files cleaned$(WHITE)"

re:	fclean all
			@echo "$(CYAN)$(PROJECT) | re $(YELLOW)♻️  REBUILT$(WHITE)"

.PHONY: all clean fclean re

-include $(OBJ_P:.o=.d)
