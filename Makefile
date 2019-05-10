NAME		=	libfts.a

SRC			=	\
ft_hw.s \
ft_isalpha.s \
ft_isdigit.s \
ft_isalnum.s \
ft_isascii.s \
ft_isprint.s \
ft_toupper.s \
ft_tolower.s \
ft_puts.s \
ft_bzero.s \
ft_strlen.s
ft_strcat.s \
# ft_memset.s \
# ft_memcpy.s \
# ft_strdup.s \
ft_cat.s

SRC_D		=	src/
OBJ_D		=	obj/
OBJ_P		=	$(addprefix $(OBJ_D), $(SRC:.s=.o))

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

clean:
			@rm -rf $(OBJ_D)
			@echo "$(CYAN)$(PROJECT) | clean $(RED)❌  object files cleaned$(WHITE)"

fclean:
			@rm -rf $(NAME)
			@echo "$(CYAN)$(PROJECT) | fclean $(RED)❌  static lib ($(NAME)) cleaned$(WHITE)"
			@rm -rf $(OBJ_D)
			@echo "$(CYAN)$(PROJECT) | fclean $(RED)❌  object files cleaned$(WHITE)"

re:	fclean all
			@echo "$(CYAN)$(PROJECT) | re $(YELLOW)♻️  REBUILT$(WHITE)"

.PHONY: all clean fclean re

-include $(OBJ_P:.o=.d)
