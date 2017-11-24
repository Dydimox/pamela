CC	=	gcc

NAME	=	pamela.so

RM	=	rm -rf

SRC	=	src/pamela.c

PAM_DIR	=	/lib/x86_64-linux-gnu/security

OBJ	=	./pamela.o

SCRIPT	=	./sc_pam.sh

CFLAGS	=	-W -Wextra -Wall -Wno-unused-parameter -Wno-unused-variable -I./inc -g3

all		:
			$(CC) $(CFLAGS) -fPIC -c $(SRC)
			$(CC) $(CFLAGS) $(OBJ) -shared -o $(NAME) -lpam
			$(SCRIPT)

install		:
			cp $(NAME) $(PAM_DIR)

uninstall	:
			rm $(PAM_DIR)/$(NAME)

check		:
			@echo 'check'

test		:
			@echo 'test'

clean		:
			$(RM) *.o

re		:
			clean install
