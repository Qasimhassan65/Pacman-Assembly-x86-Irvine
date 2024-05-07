INCLUDE Irvine32.inc
INCLUDE macros.inc

includelib kernel32.lib
includelib user32.lib
includelib Winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD


.data

file BYTE "animal.wav",0
file_gamewin BYTE "gamewin.wav",0
file_gamelost BYTE "gamelost.wav",0


ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
boundary BYTE "___________________________________________________________________________________________________" , 0





maze_level3 BYTE "                                                                                                              ", 0ah
			BYTE "                                                                                                              ", 0ah
			BYTE "           ---------------------------------------------------------------------------------------------------", 0ah
			BYTE "           -                              o   o   o   o     o   o   o   o   o                                -", 0ah 
			BYTE "           -  ----   o  -----  o  -----   ----------------    ---------------- o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----         o    -----  o -----     o      o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----         o    -----  o -----     o      o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----         o    -----  o -----     o      o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  ---------------  o -----------------{----------------  o -----  o  ---------------   -", 0ah
            BYTE "           -  ----   o  ---------------  o ----------------------------------  o ---------------   %  ----   -", 0ah
            BYTE "           -  ----   o  -----  %  -----  o -----          ----          -----  o -----  %  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  o -----          ----          -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  o -----     --------------     -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  o -----     --------------     -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  ----[  o   o  o  o ----------------------------------  o  o  o  o   o   o  o  ]---   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  o -----     --------------     -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  o -----     --------------     -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  o -----          ----          -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  -----  %  -----  o -----          ----          -----  o -----  o  -----   o  ----   -", 0ah
            BYTE "           -  ----   o  ---------------  o ----------------------------------  o -----  %  -----   %  ----   -", 0ah
            BYTE "           -  ----   o  ---------------  o -----------------}----------------  o -------------------------   -", 0ah
            BYTE "           -  ----   o  -----  o  -----         o    -----  o -----     o      o -----   o  -----  o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----         o    -----  o -----     o      o -----   o  -----  o  ----   -", 0ah
            BYTE "           -  ----   o  -----  o  -----  -----------------  o ---------------- o -----   o  -----  o  ----   -", 0ah
			BYTE "           -                   o          o   o   o   o   o   o   o   o   o        o     o         o         -", 0ah
			BYTE "           ---------------------------------------------------------------------------------------------------", 0ah




game_end_screen BYTE "  ______    ______   __       __  ________         ______   __     __  ________  _______  ",0ah  
				BYTE " /      \  /      \ |  \     /  \|        \       /      \ |  \   |  \|        \|       \  ",0ah 
				BYTE "|  $$$$$$\|  $$$$$$\| $$\   /  $$| $$$$$$$$      |  $$$$$$\| $$   | $$| $$$$$$$$| $$$$$$$\",0ah
				BYTE "| $$ __\$$| $$__| $$| $$$\ /  $$$| $$__          | $$  | $$| $$   | $$| $$__    | $$__| $$",0ah
				BYTE "| $$|    \| $$    $$| $$$$\  $$$$| $$  \         | $$  | $$ \$$\ /  $$| $$  \   | $$    $$",0ah
				BYTE "| $$ \$$$$| $$$$$$$$| $$\$$ $$ $$| $$$$$         | $$  | $$  \$$\  $$ | $$$$$   | $$$$$$$\",0ah
				BYTE "| $$__| $$| $$  | $$| $$ \$$$| $$| $$_____       | $$__/ $$   \$$ $$  | $$_____ | $$  | $$",0ah
				BYTE " \$$    $$| $$  | $$| $$  \$ | $$| $$     \       \$$    $$    \$$$   | $$     \| $$  | $$",0ah
				BYTE "  \$$$$$$  \$$   \$$ \$$      \$$ \$$$$$$$$        \$$$$$$      \$     \$$$$$$$$ \$$   \$$ ",0ah

          box1  BYTE "-------------------------------------------",0ah
				BYTE "-                                         -", 0ah
				BYTE "-                                         -", 0ah
				BYTE "-                                         -", 0ah
				BYTE "-------------------------------------------",0ah

welcome_screen1 BYTE " _______    ______    ______   __       __   ______   __    __ ", 0ah  
			    BYTE "|       \  /      \  /      \ |  \     /  \ /      \ |  \  |  \", 0ah 
				BYTE "| $$$$$$$\|  $$$$$$\|  $$$$$$\| $$\   /  $$|  $$$$$$\| $$\ | $$", 0ah
				BYTE "| $$__/ $$| $$__| $$| $$   \$$| $$$\ /  $$$| $$__| $$| $$$\| $$", 0ah
				BYTE "| $$    $$| $$    $$| $$      | $$$$\  $$$$| $$    $$| $$$$\ $$", 0ah
				BYTE "| $$$$$$$ | $$$$$$$$| $$   __ | $$\$$ $$ $$| $$$$$$$$| $$\$$ $$", 0ah
				BYTE "| $$      | $$  | $$| $$__/  \| $$ \$$$| $$| $$  | $$| $$ \$$$$", 0ah
				BYTE "| $$      | $$  | $$ \$$    $$| $$  \$ | $$| $$  | $$| $$  \$$$", 0ah
				BYTE " \$$       \$$   \$$  \$$$$$$  \$$      \$$ \$$   \$$ \$$   \$$", 0ah

menu_screen_1   BYTE "   *               )          ", 0ah
				BYTE "(  `           ( /(          ", 0ah
				BYTE ")\))(    (     )\())     (   ", 0ah
				BYTE "((_)()\   )\   ((_)\      )\  ", 0ah
				BYTE "(_()((_) ((_)   _((_)  _ ((_) ", 0ah
				BYTE "|  \/  | | __| | \| | | | | | ", 0ah
				BYTE "| |\/| | | _|  | .` | | |_| | ", 0ah
				BYTE "|_|  |_| |___| |_|\_|  \___/  ", 0ah

box2    BYTE " _____ _____ _____ _____ _____ _____ _____ ____  ", 0ah
		BYTE "|_____|_____|_____|_____|_____|_____|_____|____| ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "|_|                                          |_| ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "| |                                          | | ", 0ah
		BYTE "|_|___ _____ _____ _____ _____ _____ _____ __|_| ", 0ah
		BYTE "|_____|_____|_____|_____|_____|_____|_____|____| ", 0ah


box3	BYTE "  ______    ______    ______    ______     ______   ______   _____  ", 0ah
		BYTE " /_____/   /_____/   /_____/   /_____/   /_____/   /_____/  /_____/ ", 0ah
		BYTE " ._.                                                  	      ._. ", 0ah
		BYTE " | |                                                  	      | | ", 0ah
		BYTE " |_|                                                            |_| ", 0ah
		BYTE " |-|                                                            |-| ", 0ah
		BYTE " | |                                                            | | ", 0ah
		BYTE " |_|                                                            |_| ", 0ah
		BYTE " ._.                                                            ._. ", 0ah
		BYTE " | |                                                            | | ", 0ah
		BYTE " |_|                                                            |_| ", 0ah
		BYTE " |-|                                                            |-| ", 0ah
		BYTE " | |                                                            | | ", 0ah
		BYTE " |_|                                                            |_| ", 0ah
		BYTE "  ______    ______    ______    ______   ______    ______   _____   ", 0ah
		BYTE " /_____/   /_____/   /_____/   /_____/   /_____/   /_____/  /_____/ ", 0ah



                                                                                          
                                                                                          
                                                                                          
                                                                                                                                                                         
boundary_char BYTE "|",0
wall1 BYTE "______________",0
wall2 BYTE "_____________________",0
wall3 BYTE "_______",0
wall4 BYTE "-------",0
strScore BYTE "SCORE: ",0
strLives BYTE "LIVES: ",0
strLevel BYTE "LEVEL: ",0
strname BYTE "PLAYER-NAME: ",0
out_of_bound BYTE 0
score WORD 0
level_counter BYTE 1
lives_counter BYTE 3
food BYTE "o",0
fruit BYTE "%",0
bonus BYTE "$"

xPos BYTE 15
yPos BYTE 15

ghost_xPos BYTE 56
ghost_yPos BYTE 14

ghost2_xPos BYTE 21
ghost2_yPos BYTE 13

ghost3_xPos BYTE 86
ghost3_yPos BYTE 13

ghost4_xPos BYTE ?
ghost4_yPos BYTE ?

ghost5_xPos BYTE ?
ghost5_yPos BYTE ?

tempx BYTE 15
tempy BYTE 15

temp_ghost_xPos BYTE 0
temp_ghost_yPos BYTE 0

temp_ghost2_xPos BYTE 0
temp_ghost2_yPos BYTE 0

temp_ghost3_xPos BYTE 0
temp_ghost3_yPos BYTE 0

temp_ghost4_xPos BYTE 0
temp_ghost4_yPos BYTE 0

temp_ghost5_xPos BYTE 0
temp_ghost5_yPos BYTE 0

bonusx BYTE 78,27,27,92,92
bonusy BYTE 11,9,17,9,17
len_of_bonus DWORD 5

exit_game BYTE 0



inputChar BYTE ?

Prompt_welcome db "WELCOME  TO  PAC-MAN Doodle",0
Prompt_entername db "Enter name: ",0
username         db   50 dup(?),0
Prompt_playgame db "Play Game     [P]",0
Prompt_highscore db "HighScore     [H]",0
Prompt_exit      db "Exit          [E]",0
Prompt_resume    db "Resume        [R]",0

foodx BYTE 5000 dup(?)
foody BYTE 5000 dup(?)
len_of_foodx DWORD ?
len_of_foody DWORD ?


level1_complete BYTE 0
level2_complete BYTE 0
level3_complete BYTE 0

move_player BYTE 0
counter_1 BYTE 0
counter_2 BYTE 0
counter_3 BYTE 0
counter_4 BYTE 0

total_score WORD 0

MAX = 80      
playername BYTE MAX+1 DUP (?)  ;room for null


.code
main PROC

	INVOKE PlaySound, OFFSET file, NULL, 20001H 

	call Welcome_screen	

	call MenuScreen

	exit

main ENDP

;---------Screens--------
Welcome_screen PROC

	
mov eax,red (black*16)
call SetTextColor

mov dl,28
mov dh,7
call Gotoxy

mov counter_1,0
mov ecx,lengthof welcome_screen1
imul ecx, ecx,9
dec ecx
mov esi,0

label1:

		cmp welcome_screen1[esi]," "
		je space1

		cmp welcome_screen1[esi],0ah
		je new_line1

		cmp counter_1,5
		je color_change

		mov eax,0011b (black*16)
		call SetTextColor

		jmp next

		color_change:
		mov eax,white (black*16)
		call SetTextColor

		jmp next

		space1:
		mov eax,black (black*16)
		call SetTextColor

		jmp next

		new_line1:
		inc esi
		mov dl,28
		inc counter_1
		inc dh
		call Gotoxy

		loop label1

		next:
		inc esi
		mov al,welcome_screen1[esi]
		call WriteChar

		loop label1

mov dl,37
mov dh,17
call Gotoxy




mov ecx,lengthof box1
imul ecx, ecx,5
dec ecx
mov esi,0
label2:
		
		cmp box1[esi]," "
		je space2

		cmp box1[esi],0ah
		je new_line2

		mov eax,0011b (black*16)
		call setTextColor

		jmp next1


		space2:
		mov eax,black (black*16)
		call setTextColor

		jmp next1

		new_line2:
		mov dl,37
		inc dh
		call Gotoxy
		inc esi

		loop label2

		next1:
		mov al,box1[esi]
		call WriteChar

		inc esi
		loop label2	


	mov eax,white (black*16)
	call setTextColor
	mov dl,40
	mov dh,19
	call Gotoxy
	mWrite "ENTER NAME:  "

	mov dl,53
	mov dh,19
	call Gotoxy
	mov  edx,OFFSET playername
    mov  ecx,MAX          
    call ReadString


	call Clrscr
	ret

Welcome_screen ENDP

MenuScreen PROC

call clrscr

mov counter_1,0
mov eax,white (black*16)
call SetTextColor


mov dl,43
mov dh,3
call Gotoxy


mov ecx, lengthof menu_screen_1
imul ecx,ecx,8
dec ecx
mov esi,0
label1:
	
		cmp menu_screen_1[esi]," "
		je Draw_space


		cmp menu_screen_1[esi],0ah
		je new_line


		cmp counter_1,5
		jge color_change

		mov eax,red (black*16)
		call SetTextColor

		jmp Draw_menu

		color_change:
		mov eax,cyan (black*16)
		call SetTextColor


		jmp Draw_menu


		Draw_menu:

	
		mov al,menu_screen_1[esi]
		call WriteChar

		jmp next



		Draw_space:

		mov eax,black (black*16)
		call SetTextColor

		
		mov al,menu_screen_1[esi]
		call WriteChar

		jmp next


		new_line:
		mov dl,43
		inc dh
		call Gotoxy
		inc counter_1

		jmp next

		next:

		inc esi
		dec ecx
		cmp ecx,1
		jne label1

mov dl,34
mov dh,11
call Gotoxy


mov ecx, lengthof box2
imul ecx,ecx,13
mov esi,0
label2:
	
		cmp box2[esi]," "
		je Draw_space2


		cmp box2[esi],0ah
		je new_line2


		mov eax,cyan (black*16)
		call SetTextColor

		jmp Draw_menu2



		jmp Draw_menu2


		Draw_menu2:

	
		mov al,box2[esi]
		call WriteChar

		jmp next2



		Draw_space2:

		mov eax,black (black*16)
		call SetTextColor

		
		mov al,box2[esi]
		call WriteChar

		jmp next2


		new_line2:
		mov dl,34
		inc dh
		call Gotoxy
		inc counter_1

		jmp next2

		next2:

		inc esi
		dec ecx
		cmp ecx,1
		jne label2


		mov dl,48
		mov dh,14
		call Gotoxy
		mov eax,cyan (black*16)
		call SetTextColor
		mWrite "PLAY GAME       [P]"

		mov dl,48
		mov dh,16
		call Gotoxy
		mov eax,1101b (black*16)
		call SetTextColor
		mWrite "HIGHSCORE       [H]"

		mov dl,48
		mov dh,18
		call Gotoxy
		mov eax,0010b (black*16)
		call SetTextColor
		mWrite "INSTRUCTIONS    [I]"

		mov dl,48
		mov dh,20
		call Gotoxy
		mov eax,red (black*16)
		call SetTextColor
		mWrite "EXIT            [E]"


	
menu_loop:

	call ReadChar
	mov inputChar,al

	cmp inputChar,"p"
	je start_game

	cmp inputChar,"h"
	je highscorescreen

	cmp inputChar,"e"
	je close_screen

	cmp inputChar,"i"
	je instruction_screen

	jmp menu_loop


	start_game:
	call Clrscr
	call Game
	jmp close_screen

	instruction_screen:
	call instruct_screen
	call MenuScreen
	jmp menu_loop


	highscorescreen:
	call highscore_screen
	call MenuScreen
	jmp menu_loop

	close_screen:
	mov exit_game,1
	call Clrscr
	call Game

	ret

MenuScreen ENDP

pause_screen proc


mov eax,white (black*16)
call SetTextColor
mov dl,42
mov dh,2
call Gotoxy
mWrite "Game is now Pasued (Press R to Continue)"


pause_loop:

	call ReadChar
	mov inputChar,al

	cmp inputChar,"r"
	je resume

	cmp inputChar,"e"
	je close_screen

	jmp return

	close_screen:
	mov exit_game,1
	ret

	return:
	jmp pause_loop

	resume:

	mov eax,white (white*16)
	call SetTextColor
	mov dl,42
	mov dh,2
	call Gotoxy
	mWrite "Game is now Pasued (Press R to Continue)"
	
	ret

pause_screen endp

instruct_screen proc


call clrscr


mov dl,30
mov dh,8
call Gotoxy


mov ecx, lengthof box3
imul ecx,ecx,16
sub ecx,7
mov esi,0
label2:
	
		cmp box3[esi]," "
		je Draw_space2


		cmp box3[esi],0ah
		je new_line2


		mov eax,cyan (black*16)
		call SetTextColor

		jmp Draw_menu2



		jmp Draw_menu2


		Draw_menu2:

	
		mov al,box3[esi]
		call WriteChar

		jmp next2



		Draw_space2:

		mov eax,black (black*16)
		call SetTextColor

		
		mov al,box3[esi]
		call WriteChar

		jmp next2


		new_line2:
		mov dl,30
		inc dh
		call Gotoxy
		inc counter_1

		jmp next2

		next2:

		inc esi
		dec ecx
		cmp ecx,1
		jne label2


		mov dl,36
		mov dh,12
		call Gotoxy
		mov eax,cyan (black*16)
		call SetTextColor
		mWrite "1. Use arrow keys to navigate Pac-Man through the maze."

		mov dl,36
		mov dh,15
		call Gotoxy
		mov eax,1101b (black*16)
		call SetTextColor
		mWrite "2. Eat all the dots to advance to the next level."

		mov dl,36
		mov dh,18
		call Gotoxy
		mov eax,0010b (black*16)
		call SetTextColor
		mWrite "3. Avoid ghosts; they will cost you a life if caught."

		mov dl,36
		mov dh,21
		call Gotoxy
		mov eax,red (black*16)
		call SetTextColor
		mWrite "4. Eat Bonus to increase you Score"


		call ReadChar

		ret

instruct_screen endp

highscore_screen proc


call clrscr


mov dl,30
mov dh,8
call Gotoxy


mov ecx, lengthof box3
imul ecx,ecx,16
sub ecx,7
mov esi,0
label2:
	
		cmp box3[esi]," "
		je Draw_space2


		cmp box3[esi],0ah
		je new_line2


		mov eax,cyan (black*16)
		call SetTextColor

		jmp Draw_menu2



		jmp Draw_menu2


		Draw_menu2:

	
		mov al,box3[esi]
		call WriteChar

		jmp next2



		Draw_space2:

		mov eax,black (black*16)
		call SetTextColor

		
		mov al,box3[esi]
		call WriteChar

		jmp next2


		new_line2:
		mov dl,30
		inc dh
		call Gotoxy
		inc counter_1

		jmp next2

		next2:

		inc esi
		dec ecx
		cmp ecx,1
		jne label2


		mov dl,36
		mov dh,12
		call Gotoxy
		mov eax,cyan (black*16)
		call SetTextColor
		mWrite "1. Muhammad Qasim Hassan       300    level3"

		mov dl,36
		mov dh,15
		call Gotoxy
		mov eax,1101b (black*16)
		call SetTextColor
		mWrite "2.  Ali                        290    level3"

		mov dl,36
		mov dh,18
		call Gotoxy
		mov eax,0010b (black*16)
		call SetTextColor
		mWrite "3.  Haris                      290   level3"

		call ReadChar

		ret

highscore_screen endp


;--------MAIN GAME--------
Game proc

	call Clrscr

	cmp exit_game,1
	je exitGame

	; draw ground at (0,29):
	mov dl,0
	mov dh,29
	call Gotoxy
	mov edx,OFFSET ground
	call WriteString

	call DrawPlayer

	call DrawGhost

	call displaywalls

	call display_inside_walls_level1

	call Createfood_level1

	call displaywalls
	
	call Randomize

	gameLoop:

		;Setting Default Player and Background Color
		mov eax,white (black * 16)
		call SetTextColor

		cmp lives_counter,0
		je	end_game

		jmp start_level1

		end_game:
		call game_end


		start_level1:
		cmp level1_complete,1
		je start_level2
		call level1

		jmp forward

		start_level2:
		cmp level2_complete,1
		je start_level3
		call level2

		jmp forward

		start_level3:
		cmp level3_complete,1
		call level3

		forward:
		; get user key input:
		call Readkey
		mov inputChar,al


		mov eax,10
		call Delay

		;storing xpos and ypos before moving
		call storing_xy_to_temp


		; exit game if user types 'x':
		cmp inputChar,"x"
		je exitGame

		cmp exit_game,1
		je exitGame

		cmp inputChar,"w"
		je moveUp

		cmp inputChar,"s"
		je moveDown

		cmp inputChar,"a"
		je moveLeft

		cmp inputChar,"d"
		je moveRight

		cmp inputChar,"p"
		je game_pause

		cmp move_player,1
		je moveUp

		cmp move_player,2
		je moveDown

		cmp move_player,3
		je moveLeft

		cmp move_player,4
		je moveRight
		

		jmp gameloop
		
		moveUp:
		; allow player to jump:
		mov ecx,1
		jumpLoop:
			call UpdatePlayer
			dec yPos
			call DrawPlayer
			mov move_player,1
		loop jumpLoop
		jmp gameLoop

		moveDown:
		call UpdatePlayer
		inc yPos
		call DrawPlayer
		mov move_player,2
		jmp gameLoop

		moveLeft:
		call UpdatePlayer
		dec xPos
		call DrawPlayer
		mov move_player,3
		jmp gameLoop

		moveRight:
		call UpdatePlayer
		inc xPos
		call DrawPlayer
		mov move_player,4
		jmp gameLoop

		game_pause:
		call pause_screen
		jmp gameLoop

	exitGame:
	call game_end
	ret
Game endp

;--------BOUNDARIES--------
displaywalls proc

mov eax,white (white * 16)
call SetTextColor

Boundary1:
			
			mov dl,11
			mov dh,2
			call Gotoxy
			mov edx,OFFSET boundary
			call WriteString

Boundary2:
			
			mov dl,11
			mov dh,25
			call Gotoxy
			mov edx,OFFSET boundary
			call WriteString


Boundary3:

			mov al,3

			label1:
				mov dl,11
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,25
			jle label1
			
			

Boundary4:		

			mov al,3

			label2:
				mov dl,109
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,25
			jle label2

	ret

displaywalls endp

Boundary_restriction proc


PUSH eax

mov al,11
cmp xPos,al
jbe real_1

mov al,108
cmp xPos,al
jge real_2

mov al,2
cmp yPos,al
jbe real_3

mov al,25
cmp yPos,al
jge real_4

jmp next

real_1:
add xPos,1
jmp next

real_2:
sub xPos,1
jmp next

real_3:
add yPos,1
jmp next

real_4:
sub yPos,1
jmp next


next:
POP eax
ret

Boundary_restriction endp

Boundary_restriction_ghost proc

PUSH eax

mov al,11
cmp ghost_xPos,al
jbe real_1

mov al,108
cmp ghost_xPos,al
jge real_2

mov al,2
cmp ghost_yPos,al
jbe real_3

mov al,25
cmp ghost_yPos,al
jge real_4

jmp next

real_1:
add ghost_xPos,1
jmp next

real_2:
sub ghost_xPos,1
jmp next

real_3:
add ghost_yPos,1
jmp next

real_4:
sub ghost_yPos,1
jmp next


next:
POP eax
ret

Boundary_restriction_ghost endp

;--------MAZE LEVEL1--------
display_inside_walls_level1 proc


mov eax,blue (blue * 16)
call SetTextColor

Horizontal_walls:
			
			mov dl,20
			mov dh,6
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

			mov dl,20
			mov dh,18
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString


			mov dl,50
			mov dh,12
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

			mov dl,50
			mov dh,18
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

			
			mov dl,80
			mov dh,6
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

			mov dl,80
			mov dh,18
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

		
		
veritcal_walls:

			mov al,7

			label2:
				mov dl,20
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label2

			mov al,7

			label3:
				mov dl,50
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label3

			mov al,7

			label4:
				mov dl,80
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label4

			mov al,7

			label5:
				mov dl,40
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label5

			mov al,7

			label6:
				mov dl,70
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label6

			mov al,7

			label7:
				mov dl,100
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label7

			mov al,19

			label8:
				mov dl,20
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,24
			jle label8

			mov al,19

			label9:
				mov dl,60
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,24
			jle label9

			mov al,19

			label10:
				mov dl,100
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,24
			jle label10

		ret


display_inside_walls_level1 endp

;Player-maze restriction
maze_restriction_level1 proc

	PUSH eax
	PUSH ebx
	PUSH ecx
	PUSH edx

;Vertical Walls restriction

	mov al,20
	mov cl,5
	mov dl,13
	call comparing_function_vertical_mazelevel1

	mov al,40
	mov cl,5
	mov dl,13
	call comparing_function_vertical_mazelevel1

	mov al,50
	mov cl,6
	mov dl,13
	call comparing_function_vertical_mazelevel1

	mov al,70
	mov cl,6
	mov dl,13
	call comparing_function_vertical_mazelevel1

	mov al,80
	mov cl,5
	mov dl,13
	call comparing_function_vertical_mazelevel1

	mov al,100
	mov cl,5
	mov dl,13
	call comparing_function_vertical_mazelevel1

	mov al,20
	mov cl,17
	mov dl,25
	call comparing_function_vertical_mazelevel1

	mov al,60
	mov cl,18
	mov dl,25
	call comparing_function_vertical_mazelevel1

	mov al,100
	mov cl,17
	mov dl,25
	call comparing_function_vertical_mazelevel1

;Horizontal Walls restriction
	mov al,6
	mov cl,20
	mov dl,40
	call comparing_function_horizontal_mazelevel1
	

	mov al,12
	mov cl,50
	mov dl,70
	call comparing_function_horizontal_mazelevel1

	mov al,6
	mov cl,80
	mov dl,100
	call comparing_function_horizontal_mazelevel1

	mov al,18
	mov cl,20
	mov dl,41
	call comparing_function_horizontal_mazelevel1

	mov al,18
	mov cl,49
	mov dl,71
	call comparing_function_horizontal_mazelevel1

	mov al,18
	mov cl,79
	mov dl,100
	call comparing_function_horizontal_mazelevel1



return:

	POP edx
	POP ecx
	POP ebx
	POP eax
	ret 

maze_restriction_level1 endp

comparing_function_vertical_mazelevel1 proc


push ebp
mov ebp,esp


cmp xPos,al
jne return

cmp yPos,cl
jle return 

cmp yPos,dl
jge return


mov al,tempx
mov xPos,al
mov al,tempy
mov yPos,al


return:
POP ebp
ret 


comparing_function_vertical_mazelevel1 endp

comparing_function_horizontal_mazelevel1 proc


push ebp
mov ebp,esp


cmp yPos,al
jne return

cmp xPos,cl
jle return 

cmp xPos,dl
jge return


mov al,tempx
mov xPos,al
mov al,tempy
mov yPos,al


return:
POP ebp
ret 


comparing_function_horizontal_mazelevel1 endp


;-----Ghost-maze restriction----

;level1 ghost restriction 
ghost_maze_restriction_level1 proc

	PUSH eax
	PUSH ebx
	PUSH ecx
	PUSH edx

;Vertical Walls restriction

	mov al,20
	mov cl,5
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1

	mov al,40
	mov cl,5
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1

	mov al,50
	mov cl,6
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1

	mov al,70
	mov cl,6
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1

	mov al,80
	mov cl,5
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1

	mov al,100
	mov cl,5
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1

	mov al,20
	mov cl,17
	mov dl,25
	call ghost_comparing_function_vertical_mazelevel1

	mov al,60
	mov cl,18
	mov dl,25
	call ghost_comparing_function_vertical_mazelevel1

	mov al,100
	mov cl,17
	mov dl,25
	call ghost_comparing_function_vertical_mazelevel1

;Horizontal Walls restriction
	mov al,6
	mov cl,20
	mov dl,40
	call ghost_comparing_function_horizontal_mazelevel1
	

	mov al,12
	mov cl,50
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,6
	mov cl,80
	mov dl,100
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,18
	mov cl,20
	mov dl,41
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,18
	mov cl,49
	mov dl,71
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,18
	mov cl,79
	mov dl,100
	call ghost_comparing_function_horizontal_mazelevel1



return:

	POP edx
	POP ecx
	POP ebx
	POP eax
	ret 

ghost_maze_restriction_level1 endp

;level2 ghost restriction
ghost_maze_restriction_level2 proc

	PUSH eax
	PUSH ebx
	PUSH ecx
	PUSH edx

;Vertical Walls restriction

	mov al,20
	mov cl,5
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1	

	mov al,34
	mov cl,5
	mov dl,12
	call ghost_comparing_function_vertical_mazelevel1

	mov al,49
	mov cl,10
	mov dl,17
	call ghost_comparing_function_vertical_mazelevel1

	mov al,70
	mov cl,5
	mov dl,11
	call ghost_comparing_function_vertical_mazelevel1

	mov al,70
	mov cl,11
	mov dl,17
	call ghost_comparing_function_vertical_mazelevel1

	mov al,85
	mov cl,5
	mov dl,11
	call ghost_comparing_function_vertical_mazelevel1

	mov al,98
	mov cl,5
	mov dl,14
	call ghost_comparing_function_vertical_mazelevel1

	mov al,98
	mov cl,15
	mov dl,22
	call ghost_comparing_function_vertical_mazelevel1

	mov al,85
	mov cl,11
	mov dl,20
	call ghost_comparing_function_vertical_mazelevel1

	mov al,20
	mov cl,15
	mov dl,22
	call ghost_comparing_function_vertical_mazelevel1

	mov al,34
	mov cl,15
	mov dl,22
	call ghost_comparing_function_vertical_mazelevel1




;Horizontal Walls restriction
	mov al,6
	mov cl,20
	mov dl,35
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,11
	mov cl,34
	mov dl,49
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,6
	mov cl,49
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,10
	mov cl,70
	mov dl,85
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,12
	mov cl,70
	mov dl,85
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,6
	mov cl,84
	mov dl,99
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,21
	mov cl,84
	mov dl,99
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,21
	mov cl,20
	mov dl,34
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,21
	mov cl,48
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,16
	mov cl,56
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1
	


return:

	POP edx
	POP ecx
	POP ebx
	POP eax
	ret 

ghost_maze_restriction_level2 endp

ghost_comparing_function_horizontal_mazelevel1 proc	

push ebp
mov ebp,esp


cmp ghost_yPos,al
jne return

cmp ghost_xPos,cl
jle return 

cmp ghost_xPos,dl
jge return


mov al,temp_ghost_xPos
mov ghost_xPos,al
mov al,temp_ghost_yPos
mov ghost_yPos,al


return:
POP ebp
ret
ghost_comparing_function_horizontal_mazelevel1 endp

ghost_comparing_function_vertical_mazelevel1 proc


push ebp
mov ebp,esp


cmp ghost_xPos,al
jne return

cmp ghost_yPos,cl
jle return 

cmp ghost_yPos,dl
jge return

mov al,temp_ghost_xPos
mov ghost_xPos,al
mov al,temp_ghost_yPos
mov ghost_yPos,al


return:
POP ebp
ret 


ghost_comparing_function_vertical_mazelevel1 endp

ghost2_maze_restriction_level2 proc

PUSH eax
	PUSH ebx
	PUSH ecx
	PUSH edx

;Vertical Walls restriction

	mov al,20
	mov cl,5
	mov dl,13
	call ghost_comparing_function_vertical_mazelevel1	

	mov al,34
	mov cl,5
	mov dl,12
	call ghost_comparing_function_vertical_mazelevel1

	mov al,49
	mov cl,10
	mov dl,17
	call ghost_comparing_function_vertical_mazelevel1

	mov al,70
	mov cl,5
	mov dl,11
	call ghost_comparing_function_vertical_mazelevel1

	mov al,70
	mov cl,11
	mov dl,17
	call ghost_comparing_function_vertical_mazelevel1

	mov al,85
	mov cl,5
	mov dl,11
	call ghost_comparing_function_vertical_mazelevel1

	mov al,98
	mov cl,5
	mov dl,14
	call ghost_comparing_function_vertical_mazelevel1

	mov al,98
	mov cl,15
	mov dl,22
	call ghost_comparing_function_vertical_mazelevel1

	mov al,85
	mov cl,11
	mov dl,20
	call ghost_comparing_function_vertical_mazelevel1

	mov al,20
	mov cl,15
	mov dl,22
	call ghost_comparing_function_vertical_mazelevel1

	mov al,34
	mov cl,15
	mov dl,22
	call ghost_comparing_function_vertical_mazelevel1



;Horizontal Walls restriction
	mov al,6
	mov cl,20
	mov dl,35
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,11
	mov cl,34
	mov dl,49
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,6
	mov cl,49
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,10
	mov cl,70
	mov dl,85
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,12
	mov cl,70
	mov dl,85
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,6
	mov cl,84
	mov dl,99
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,21
	mov cl,84
	mov dl,99
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,21
	mov cl,20
	mov dl,34
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,21
	mov cl,48
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1

	mov al,16
	mov cl,56
	mov dl,70
	call ghost_comparing_function_horizontal_mazelevel1
	


return:

	POP edx
	POP ecx
	POP ebx
	POP eax
	ret 


ghost2_maze_restriction_level2 endp

;--------MAZE LEVEL2--------
display_inside_walls_level2 proc


mov eax,blue (blue * 16)
call SetTextColor

Horizontal_walls:
			
			mov dl,20
			mov dh,6
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString


			mov dl,20
			mov dh,21
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,35
			mov dh,11
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,50
			mov dh,6
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

			mov dl,85
			mov dh,21
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,85
			mov dh,6
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,57
			mov dh,16
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,71
			mov dh,10
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,71
			mov dh,12
			call Gotoxy
			mov edx,OFFSET wall1
			call WriteString

			mov dl,49
			mov dh,21
			call Gotoxy
			mov edx,OFFSET wall2
			call WriteString

		
veritcal_walls:

			mov al,7

			label2:
				mov dl,20
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,12
			jle label2

			mov al,16

			label3:
				mov dl,20
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,21
			jle label3

			mov al,16

			label4:
				mov dl,34
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,21
			jle label4

			mov al,6

			label5:
				mov dl,34
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,11
			jle label5

			mov al,7

			label6:
				mov dl,70
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,10
			jle label6

			mov al,12

			label7:
				mov dl,70
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,16
			jle label7

			mov al,12

			label8:
				mov dl,85
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,19
			jle label8

			mov al,7

			label9:
				mov dl,85
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,10
			jle label9

			mov al,7

			label10:
				mov dl,98
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,13
			jle label10

			mov al,16

			label11:
				mov dl,98
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,21
			jle label11

			mov al,11

			label12:
				mov dl,49
				mov dh,al
				call Gotoxy
				mov edx,OFFSET boundary_char
				mov ecx,lengthof boundary_char
				call WriteString
				inc al
				cmp al,16
			jle label12
						
		ret


display_inside_walls_level2 endp

;Player-maze restriction
maze_restriction_level2 proc

	PUSH eax
	PUSH ebx
	PUSH ecx
	PUSH edx

;Vertical Walls restriction

	mov al,20
	mov cl,5
	mov dl,13
	call comparing_function_vertical_mazelevel2

	mov al,34
	mov cl,5
	mov dl,12
	call comparing_function_vertical_mazelevel2

	mov al,49
	mov cl,10
	mov dl,17
	call comparing_function_vertical_mazelevel2

	mov al,70
	mov cl,5
	mov dl,11
	call comparing_function_vertical_mazelevel2

	mov al,70
	mov cl,11
	mov dl,17
	call comparing_function_vertical_mazelevel2

	mov al,85
	mov cl,5
	mov dl,11
	call comparing_function_vertical_mazelevel2

	mov al,98
	mov cl,5
	mov dl,14
	call comparing_function_vertical_mazelevel2

	mov al,98
	mov cl,15
	mov dl,22
	call comparing_function_vertical_mazelevel2

	mov al,85
	mov cl,11
	mov dl,20
	call comparing_function_vertical_mazelevel2

	mov al,20
	mov cl,15
	mov dl,22
	call comparing_function_vertical_mazelevel2

	mov al,34
	mov cl,15
	mov dl,22
	call comparing_function_vertical_mazelevel2

	

;Horizontal Walls restriction
	mov al,6
	mov cl,20
	mov dl,35
	call comparing_function_horizontal_mazelevel2

	mov al,11
	mov cl,34
	mov dl,49
	call comparing_function_horizontal_mazelevel2

	mov al,6
	mov cl,49
	mov dl,70
	call comparing_function_horizontal_mazelevel2

	mov al,10
	mov cl,70
	mov dl,85
	call comparing_function_horizontal_mazelevel2

	mov al,12
	mov cl,70
	mov dl,85
	call comparing_function_horizontal_mazelevel2

	mov al,6
	mov cl,84
	mov dl,99
	call comparing_function_horizontal_mazelevel2

	mov al,21
	mov cl,84
	mov dl,99
	call comparing_function_horizontal_mazelevel2

	mov al,21
	mov cl,20
	mov dl,34
	call comparing_function_horizontal_mazelevel2

	mov al,21
	mov cl,48
	mov dl,70
	call comparing_function_horizontal_mazelevel2

	mov al,16
	mov cl,56
	mov dl,70
	call comparing_function_horizontal_mazelevel2


return:

	POP edx
	POP ecx
	POP ebx
	POP eax
	ret 

maze_restriction_level2 endp

comparing_function_vertical_mazelevel2 proc


push ebp
mov ebp,esp


cmp xPos,al
jne return

cmp yPos,cl
jle return 

cmp yPos,dl
jge return


mov al,tempx
mov xPos,al
mov al,tempy
mov yPos,al


return:
POP ebp
ret 


comparing_function_vertical_mazelevel2 endp

comparing_function_horizontal_mazelevel2 proc


push ebp
mov ebp,esp


cmp yPos,al
jne return

cmp xPos,cl
jle return 

cmp xPos,dl
jge return


mov al,tempx
mov xPos,al
mov al,tempy
mov yPos,al


return:
POP ebp
ret 


comparing_function_horizontal_mazelevel2 endp

;------------MAZE LEVEL 3-------------
display_level3 proc

PUSH esi
PUSH ecx

mov eax,white (black*16)
call SetTextColor


mov dl,0
mov dh,0
call Gotoxy


mov ecx, 111
imul ecx,ecx,26
mov esi,0
label1:
		cmp maze_level3[esi],"-"
		je Draw_wall

		cmp maze_level3[esi]," "
		je Draw_space

		cmp maze_level3[esi],"o"
		je Draw_score

		cmp maze_level3[esi],0ah
		je new_line

		cmp maze_level3[esi],"["
		je Draw_teleport

		cmp maze_level3[esi],"]"
		je Draw_teleport

		cmp maze_level3[esi],"{"
		je Draw_teleport

		cmp maze_level3[esi],"}"
		je Draw_teleport

		cmp maze_level3[esi],"%"
		je Draw_bonus

	
		Draw_wall:

		mov eax,green (black*16)
		call SetTextColor

		
		mov al,maze_level3[esi]
		call WriteChar

		jmp next

		Draw_bonus:

		mov eax,cyan (black*16)
		call SetTextColor

		
		mov al,maze_level3[esi]
		call WriteChar

		jmp next

		label2:
				jmp label1

		Draw_space:

		mov eax,black (black*16)
		call SetTextColor

		
		mov al,maze_level3[esi]
		call WriteChar


		jmp next

		Draw_teleport:

		mov eax,red (black*16)
		call SetTextColor

		
		mov al,maze_level3[esi]
		call WriteChar


		jmp next

		Draw_score:

		mov eax,yellow (black*16)
		call SetTextColor

		
		mov al,maze_level3[esi]
		call WriteChar

		jmp next

		new_line:
		mov dl,0
		inc dh
		call Gotoxy

		jmp next

		next:

		inc esi
		dec ecx
		cmp ecx,1
		jne label2


POP ecx
POP esi
ret

display_level3 endp

maze_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"-"
jne return

wall_collide:
			mov cl,tempx
			mov xPos,cl
			mov cl,tempy
			mov yPos,cl

return:

POP ecx
POP esi
ret


maze_restriction_level3 endp

;Ghosts level3 rectrictions
ghost_maze_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,ghost_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,ghost_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"-"
jne return

wall_collide:
			mov cl,temp_ghost_xPos
			mov xPos,cl
			mov cl,temp_ghost_yPos
			mov yPos,cl

return:

POP ecx
POP esi
ret


ghost_maze_restriction_level3 endp

ghost_food_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,temp_ghost_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,temp_ghost_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]

cmp cl,"o"
jne return

food_collide:

			mov eax,yellow (black * 16)
			call SetTextColor
	
			mov dl,temp_ghost_xPos
			mov dh,temp_ghost_yPos
			call Gotoxy
			mov al,'o'
			call WriteChar

			

return:

POP ecx
POP esi
ret


ghost_food_restriction_level3 endp

ghost2_maze_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,temp_ghost2_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,temp_ghost2_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"-"
jne return

wall_collide:
			mov cl,temp_ghost2_xPos
			mov xPos,cl
			mov cl,temp_ghost2_yPos
			mov yPos,cl

return:

POP ecx
POP esi
ret


ghost2_maze_restriction_level3 endp

ghost2_food_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,temp_ghost2_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,temp_ghost2_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"o"
jne return

food_collide:
			
			mov eax,yellow (black * 16)
			call SetTextColor

			mov dl,temp_ghost2_xPos
			mov dh,temp_ghost2_yPos
			call Gotoxy
			mov al,'o'
			call WriteChar

return:

POP ecx
POP esi
ret


ghost2_food_restriction_level3 endp

ghost3_maze_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,ghost3_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,ghost3_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"-"
jne return

wall_collide:
			mov eax,yellow (black * 16)
			call SetTextColor

			mov dl,temp_ghost3_xPos
			mov dh,temp_ghost3_yPos
			call Gotoxy
			mov al,"o"
			call WriteChar

return:

POP ecx
POP esi
ret


ghost3_maze_restriction_level3 endp

ghost3_food_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,temp_ghost3_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,temp_ghost3_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"o"
jne return

food_collide:
			
			mov eax,yellow (black * 16)
			call SetTextColor

			mov dl,temp_ghost3_xPos
			mov dh,temp_ghost3_yPos
			call Gotoxy
			mov al,'o'
			call WriteChar

return:

POP ecx
POP esi
ret


ghost3_food_restriction_level3 endp

ghost4_food_restriction_level3 proc

PUSH esi
PUSH ecx

movzx ecx,temp_ghost4_yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,temp_ghost4_xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"o"
jne return

food_collide:
			
			mov eax,yellow (black * 16)
			call SetTextColor

			mov dl,temp_ghost4_xPos
			mov dh,temp_ghost4_yPos
			call Gotoxy
			mov al,'o'
			call WriteChar

return:

POP ecx
POP esi
ret


ghost4_food_restriction_level3 endp


bonus_collision_level3 proc
PUSH esi
PUSH ecx

movzx ecx,yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"%"
jne return

score_collided:
			add score,10
			mov maze_level3[esi]," "
		
return:

POP ecx
POP esi
ret



bonus_collision_level3 endp

teleport_collision_level3 proc
PUSH esi
PUSH ecx

mov eax,red (black * 16)
call SetTextColor


movzx ecx,yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]

cmp cl,"["
je teleport_collided_1

cmp cl,"]"
je teleport_collided_2

cmp cl,"{"
je teleport_collided_3

cmp cl,"}"
je teleport_collided_4

jmp return

teleport_collided_1:
			
			call UpdatePlayer	
			mov xPos,96
			mov yPos,14
			mov dl,28
			mov dh,14
			call Gotoxy
			mov al,'['
			call WriteChar
			jmp return

teleport_collided_2:
			
			call UpdatePlayer
			mov dl,98
			mov dh,14
			mov al,']'
			call WriteChar
			mov xPos,29
			mov yPos,14

			jmp return

teleport_collided_3:
			
			call UpdatePlayer	
			mov xPos,60
			mov yPos,22
			mov dl,60
			mov dh,8
			call Gotoxy
			mov al,'{'
			call WriteChar
			jmp return

teleport_collided_4:
			
			
			call UpdatePlayer	
			mov xPos,60
			mov yPos,7
			mov dl,60
			mov dh,21
			call Gotoxy
			mov al,'}'
			call WriteChar
			jmp return


return:

POP ecx
POP esi
ret



teleport_collision_level3 endp


;--------PLAYER--------
DrawPlayer PROC
	; draw player at (xPos,yPos):

	mov eax,white (Black*16)
	call setTextColor

	call Boundary_restriction
	
	cmp level_counter,1
	jne next1
	call maze_restriction_level1
	
	jmp next

	next1:
	cmp level_counter,2
	jne next2
	call maze_restriction_level2
	jmp next
	next2:
	call maze_restriction_level3
	jmp next


	next:
	mov dl,xPos
	mov dh,yPos
	call Gotoxy
	mov al,"C"
	call WriteChar
	
	ret
DrawPlayer ENDP

UpdatePlayer PROC
	mov dl,xPos
	mov dh,yPos
	call Gotoxy
	mov al," "
	call WriteChar
	ret
UpdatePlayer ENDP

;--------GHOST--------
DrawGhost PROC

	
	
	cmp level_counter,1
	jne forward1
	call Boundary_restriction_ghost
	call ghost_maze_restriction_level1
	call ghost_food_restriction
	jmp forward3

	forward1:
	cmp level_counter,2
	jne forward2
	call Boundary_restriction_ghost
	call ghost_maze_restriction_level2
	call ghost_food_restriction
	jmp forward3

	forward2:
	call Boundary_restriction_ghost
	call ghost_maze_restriction_level3
	call ghost_food_restriction_level3
	
	forward3:

	mov eax,1101b (black * 16)
	call SetTextColor

	mov dl,ghost_xPos
	mov dh,ghost_yPos
	call Gotoxy
	mov al,"X"
	call WriteChar

	mov eax,white (black * 16)
	call SetTextColor
	ret

DrawGhost ENDP

UpdateGhost PROC
	mov dl,temp_ghost_xPos
	mov dh,temp_ghost_yPos
	call Gotoxy
	mov al," "
	call WriteChar
	ret
UpdateGhost ENDP

Ghost_movement PROC
PUSH ebx
PUSH eax

	call storing_ghost_xy_to_temp
	
	mov  eax,4   
	call RandomRange 

	mov ebx, eax ; Store the random direction in ebx

    ; Update ghost position based on the random direction
    cmp ebx, 0
    je moveUp
    cmp ebx, 1
    je moveDown
    cmp ebx, 2
    je moveLeft
    cmp ebx, 3
    je moveRight

	jmp return

	moveUp:
		mov ecx,1
		jumpLoop:
			dec ghost_yPos
			call UpdateGhost	
			call DrawGhost	
			mov eax,70
			call Delay
		loop jumpLoop
		jmp return

	moveDown:
		inc ghost_yPos
		call UpdateGhost
		call DrawGhost
		jmp return

	moveLeft:
		dec ghost_xPos
		call UpdateGhost
		call DrawGhost
		jmp return

	moveRight:
		inc ghost_xPos
		call UpdateGhost
		call DrawGhost
		jmp return



return:

POP eax
POP ebx
ret
Ghost_movement ENDP

;Ghost 2 & 3
DrawGhost2 PROC

	
	forward1:
	cmp level_counter,2
	jne forward2
	call ghost2_food_restriction
	jmp forward3

	forward2:
	call Boundary_restriction_ghost
	call ghost2_food_restriction_level3
	
	forward3:

	mov eax,1101b (black * 16)
	call SetTextColor

	mov dl,ghost2_xPos
	mov dh,ghost2_yPos
	call Gotoxy
	mov al,"X"
	call WriteChar

	mov eax,white (black * 16)
	call SetTextColor
	ret

DrawGhost2 ENDP

Ghost_movement2 PROC
PUSH ebx
PUSH eax

	call storing_ghost2_xy_to_temp

	check1:
	
	mov bl,ghost2_xPos
	mov bh,ghost2_yPos

	cmp bl,21
	jne check_next

	cmp bh,7
	jle check_next

	cmp bh,20
	jge check_next

	moveUp:
			dec ghost2_yPos
			call UpdateGhost2	
			call DrawGhost2	
		jmp return

	check_next:

	cmp bh,7
	jne check_next2

	cmp bl,21
	jl check_next2

	cmp bl,32
	jg check_next2

	
	moveRight:
		inc ghost2_xPos
		call UpdateGhost2
		call DrawGhost2
		jmp return

	check_next2:

	cmp bl,33
	jne check_next3

	cmp bh,7
	jl check_next3

	cmp bh,19
	jg check_next3

	moveDown:
		inc ghost2_yPos
		call UpdateGhost2
		call DrawGhost2
		jmp return

	check_next3:

	cmp bh,20
	jne check4

	cmp bl,21
	jle check4

	cmp bl,33
	jg check4

	moveLeft:
		dec ghost2_xPos
		call UpdateGhost2
		call DrawGhost2
		jmp return
	
	check4:
	jmp moveUp
	

return:

POP eax
POP ebx
ret
Ghost_movement2 ENDP

UpdateGhost2 PROC
	mov dl,temp_ghost2_xPos
	mov dh,temp_ghost2_yPos
	call Gotoxy
	mov al," "
	call WriteChar
	ret
UpdateGhost2 ENDP

DrawGhost3 PROC

	mov eax,red (black * 16)
	call SetTextColor
	

	forward1:
	cmp level_counter,2
	jne forward2
	call ghost3_food_restriction
	jmp forward3

	forward2:
	call ghost3_maze_restriction_level3
	call ghost3_food_restriction_level3
	
	forward3:

	mov eax,blue (black * 16)
	call SetTextColor

	mov dl,ghost3_xPos
	mov dh,ghost3_yPos
	call Gotoxy
	mov al,"X"
	call WriteChar

	mov eax,white (black * 16)
	call SetTextColor
	ret

DrawGhost3 ENDP

Ghost_movement3 PROC
PUSH ebx
PUSH eax

	call storing_ghost3_xy_to_temp

	check1:
	
	mov bl,ghost3_xPos
	mov bh,ghost3_yPos

	cmp bl,86
	jne check_next

	cmp bh,7
	jle check_next

	cmp bh,20
	jge check_next

	moveUp:
			dec ghost3_yPos
			call UpdateGhost3	
			call DrawGhost3
		jmp return

	check_next:

	cmp bh,7
	jne check_next2

	cmp bl,86
	jl check_next2

	cmp bl,96
	jg check_next2

	
	moveRight:
		inc ghost3_xPos
		call UpdateGhost3
		call DrawGhost3
		jmp return

	check_next2:

	cmp bl,97
	jne check_next3

	cmp bh,7
	jl check_next3

	cmp bh,19
	jg check_next3

	moveDown:
		inc ghost3_yPos
		call UpdateGhost3
		call DrawGhost3
		jmp return

	check_next3:

	cmp bh,20
	jne check4

	cmp bl,86
	jle check4

	cmp bl,97
	jg check4

	moveLeft:
		dec ghost3_xPos
		call UpdateGhost3
		call DrawGhost3
		jmp return
	
	check4:
	jmp moveUp
	

return:

POP eax
POP ebx
ret
Ghost_movement3 ENDP

UpdateGhost3 PROC
	mov dl,temp_ghost3_xPos
	mov dh,temp_ghost3_yPos
	call Gotoxy
	mov al," "
	call WriteChar
	ret
UpdateGhost3 ENDP

DrawGhost4 PROC

	

	call ghost4_food_restriction_level3

	forward3:

	mov eax,blue (black * 16)
	call SetTextColor

	mov dl,ghost4_xPos
	mov dh,ghost4_yPos
	call Gotoxy
	mov al,"X"
	call WriteChar

	mov eax,white (black * 16)
	call SetTextColor
	ret

DrawGhost4 ENDP

UpdateGhost4 PROC
	mov dl,temp_ghost4_xPos
	mov dh,temp_ghost4_yPos
	call Gotoxy
	mov al," "
	call WriteChar
	ret
UpdateGhost4 ENDP

Ghost1_movement_level3 PROC
PUSH ebx
PUSH eax

	call storing_ghost_xy_to_temp

	check1:
	
	mov bl,ghost_xPos
	mov bh,ghost_yPos

	cmp bh,3
	jle check_next

	cmp counter_2,1
	je check_next

	moveUp:
		dec ghost_yPos
		call UpdateGhost	
		call DrawGhost
		mov eax,10
		call Delay
	jmp return



	check_next:

	mov counter_2,1

	cmp bh,24
	jge check3

		moveDown:
		inc ghost_yPos
		call UpdateGhost
		call DrawGhost
		mov eax,10
		call Delay
		jmp return
	

	check3:
	mov counter_2,0
	jmp moveDown
	

return:
POP eax
POP ebx
ret
Ghost1_movement_level3 ENDP

Ghost2_movement_level3 PROC
PUSH ebx
PUSH eax

	call storing_ghost2_xy_to_temp

	check1:
	
	mov bl,ghost2_xPos
	mov bh,ghost2_yPos

	cmp bh,3
	jle check_next

	cmp counter_2,1
	je check_next

	moveUp:
		dec ghost2_yPos
		call UpdateGhost2	
		call DrawGhost2
		mov eax,10
		call Delay
	jmp return



	check_next:

	mov counter_2,1

	cmp bh,23
	jge check3

		moveDown:
		inc ghost2_yPos
		call UpdateGhost2
		call DrawGhost2
		mov eax,10
		call Delay
		jmp return
	

	check3:
	mov counter_2,0
	jmp moveDown
	

return:
POP eax
POP ebx
ret
Ghost2_movement_level3 ENDP

Ghost3_movement_level3 PROC
PUSH ebx
PUSH eax

	call storing_ghost3_xy_to_temp

	check1:
	
	mov bl,ghost3_xPos
	mov bh,ghost3_yPos

	cmp bh,9
	jle check_next

	cmp counter_3,1
	je check_next

	moveUp:
		dec ghost3_yPos
		call UpdateGhost3	
		call DrawGhost3
		mov eax,3
		call Delay
	jmp return



	check_next:

	mov counter_3,1

	cmp bh,18
	jge check3

		moveDown:
		inc ghost3_yPos
		call UpdateGhost3
		call DrawGhost3
		mov eax,3
		call Delay
		jmp return
	

	check3:
	mov counter_3,0
	jmp moveDown
	

return:
POP eax
POP ebx
ret
Ghost3_movement_level3 ENDP

Ghost4_movement_level3 PROC
PUSH ebx
PUSH eax

	call storing_ghost4_xy_to_temp

	check1:
	
	mov bl,ghost4_xPos
	mov bh,ghost4_yPos

	cmp bh,10
	jle check_next

	cmp counter_4,1
	je check_next

	moveUp:
		dec ghost4_yPos
		call UpdateGhost4	
		call DrawGhost4
		mov eax,3
		call Delay
	jmp return



	check_next:

	mov counter_4,1

	cmp bh,17
	jge check3

		moveDown:
		inc ghost4_yPos
		call UpdateGhost4
		call DrawGhost4
		mov eax,3
		call Delay
		jmp return
	

	check3:
	mov counter_4,0
	jmp moveDown
	

return:
POP eax
POP ebx
ret
Ghost4_movement_level3 ENDP



;-----------------------


;--------PLAYER-GHOST--------
Check_Player_Ghost_collision PROC
PUSH ebx


mov bl,xPos
mov bh,yPos


cmp ghost_xPos,bl
jne return


cmp ghost_yPos,bh
jne return

dec lives_counter

mov dl,ghost_xPos
mov dh,ghost_yPos
call Gotoxy
mov al," "
call WriteChar


	cmp level_counter,1
	jne next1

	mov xPos,15
	mov yPos,15
	mov ghost_xPos,45
	mov ghost_yPos,11
	
	
	jmp next

	next1:
	cmp level_counter,2
	jne next2


	mov xPos,15
	mov yPos,15
	mov ghost_xPos,55
	mov ghost_yPos,11

	jmp next
	next2: 
	mov xPos,12
	mov yPos,3
	mov ghost_xPos,21
	mov ghost_yPos,15
	jmp next


next:


return:

POP ebx
	ret
Check_Player_Ghost_collision ENDP

Check_Player_Ghost2_collision PROC
PUSH ebx


mov bl,xPos
mov bh,yPos


cmp ghost2_xPos,bl
jne return


cmp ghost2_yPos,bh
jne return


dec lives_counter

mov dl,ghost2_xPos
mov dh,ghost2_yPos
call Gotoxy
mov al," "
call WriteChar

	next1:
	cmp level_counter,2
	jne next2

	mov xPos,15
	mov yPos,15
	mov ghost2_xPos,21
	mov ghost2_yPos,13

	jmp next

	next2: 
	mov xPos,12
	mov yPos,3
	mov ghost2_xPos,78
	mov ghost2_yPos,15
	jmp next


next:

return:

POP ebx
	ret
Check_Player_Ghost2_collision ENDP

Check_Player_Ghost3_collision PROC
PUSH ebx


mov bl,xPos
mov bh,yPos


cmp ghost3_xPos,bl
jne return


cmp ghost3_yPos,bh
jne return

dec lives_counter

mov dl,ghost3_xPos
mov dh,ghost3_yPos
call Gotoxy
mov al," "
call WriteChar

	next1:
	cmp level_counter,2
	jne next2

	mov xPos,15
	mov yPos,15
	mov ghost3_xPos,87
	mov ghost3_yPos,13

	jmp next

	next2: 
	mov xPos,12
	mov yPos,3
	mov ghost3_xPos,99
	mov ghost3_yPos,15
	jmp next


next:

return:

POP ebx
	ret
Check_Player_Ghost3_collision ENDP

Check_Player_Ghost4_collision PROC
PUSH ebx


mov bl,xPos
mov bh,yPos


cmp ghost4_xPos,bl
jne return


cmp ghost4_yPos,bh
jne return

dec lives_counter

mov dl,ghost4_xPos
mov dh,ghost4_yPos
call Gotoxy
mov al,' '
call WriteChar


	mov xPos,12
	mov yPos,3
	mov ghost4_xPos,31
	mov ghost4_yPos,15
	jmp next


next:

return:

POP ebx
	ret
Check_Player_Ghost4_collision ENDP




;--------FOOD--------
;level1-food
Createfood_level1 PROC	

	PUSH ebx
	PUSH esi

	mov eax,yellow (black * 16)
	call SetTextColor

	mov esi,-1


	mov bl,20
	labelx:
		mov dl,bl
		mov dh,15
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,102
		jne labelx

	mov bl,21
	label1:
		mov dl,bl
		mov dh,7
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,40
		jne label1

	mov bl,51
	label2:
		mov dl,bl
		mov dh,11
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,70
		jne label2

		
	mov bl,81
	label3:
		mov dl,bl
		mov dh,7
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,100
		jne label3

	mov bl,21
	label4:
		mov dl,bl
		mov dh,19
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,40
		jne label4

	mov bl,51
	label5:
		mov dl,bl
		mov dh,17
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,70
		jne label5

	mov bl,81
	label6:
		mov dl,bl
		mov dh,19
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,100
		jne label6

    inc esi
	mov len_of_foodx,esi
	mov len_of_foody,esi
	

	POP esi
	POP ebx
	ret 

Createfood_level1 ENDP

Checkfood_collision PROC

PUSH eax
PUSH esi
PUSH edi

mov eax,0
mov esi,0
mov edi,0


label1:
		cmp foodx[esi],0
		je next1

		mov ah,xPos
		cmp foodx[esi],ah
		je label2

		next1:
		inc esi
		cmp esi,len_of_foodx
		jle label1
		jmp return

label2:
		
		mov ah,yPos
		cmp foody[esi],ah
		je food_found

		inc esi
		cmp esi,len_of_foodx
		jle label1

		
food_found:
		mov foodx[esi],0
		mov foody[esi],0
		inc score



return:
POP edi
POP esi
POP eax
ret 

Checkfood_collision ENDP

food_collision_level3 PROC
PUSH esi
PUSH ecx

movzx ecx,yPos
mov esi,ecx
imul esi, esi,111
movzx ecx,xPos
add esi,ecx
mov ecx,0
mov cl,maze_level3[esi]
cmp cl,"o"
jne return

score_collided:
			inc score
			inc total_score
			mov maze_level3[esi]," "
			mov cl,maze_level3[esi]

return:

POP ecx
POP esi
ret
food_collision_level3 ENDP

ghost_food_restriction PROC

PUSH eax
PUSH esi
PUSH edi
PUSH edx

mov eax,0
mov esi,0
mov edi,0


mov eax,yellow (black * 16)
	call SetTextColor

label1:
		cmp foodx[esi],0
		je next1

		mov ah,temp_ghost_xPos
		cmp foodx[esi],ah
		je label2

		next1:
		inc esi
		cmp esi,len_of_foodx
		jle label1
		jmp return

label2:
		
		mov ah,temp_ghost_yPos
		cmp foody[esi],ah
		je food_found

		inc esi
		cmp esi,len_of_foodx
		jle label1

		
food_found:
			mov dl,temp_ghost_xPos
			mov dh,temp_ghost_yPos
			call Gotoxy
			mov al,"o"
			call WriteChar

			mov eax,red (black * 16)
			call SetTextColor
			jmp retu



return:

mov eax,1101b (black * 16)
call SetTextColor

retu:
POP edx
POP edi
POP esi
POP eax
ret 

ghost_food_restriction ENDP

ghost2_food_restriction PROC

PUSH eax
PUSH esi
PUSH edi
PUSH edx

mov eax,0
mov esi,0
mov edi,0


mov eax,yellow (black * 16)
	call SetTextColor

label1:
		cmp foodx[esi],0
		je next1

		mov ah,temp_ghost2_xPos
		cmp foodx[esi],ah
		je label2

		next1:
		inc esi
		cmp esi,len_of_foodx
		jle label1
		jmp return

label2:
		
		mov ah,temp_ghost2_yPos
		cmp foody[esi],ah
		je food_found

		inc esi
		cmp esi,len_of_foodx
		jle label1

		
food_found:
			mov dl,temp_ghost2_xPos
			mov dh,temp_ghost2_yPos
			call Gotoxy
			mov al,"o"
			call WriteChar

			mov eax,red (black * 16)
			call SetTextColor
			jmp retu
return:

mov eax,green (black * 16)
call SetTextColor

retu:
POP edx
POP edi
POP esi
POP eax
ret 

ghost2_food_restriction ENDP

ghost3_food_restriction PROC

PUSH eax
PUSH esi
PUSH edi
PUSH edx

mov eax,0
mov esi,0
mov edi,0


mov eax,yellow (black * 16)
	call SetTextColor

label1:
		cmp foodx[esi],0
		je next1

		mov ah,temp_ghost3_xPos
		cmp foodx[esi],ah
		je label2

		next1:
		inc esi
		cmp esi,len_of_foodx
		jle label1
		jmp return

label2:
		
		mov ah,temp_ghost3_yPos
		cmp foody[esi],ah
		je food_found

		inc esi
		cmp esi,len_of_foodx
		jle label1

		
food_found:
			mov dl,temp_ghost3_xPos
			mov dh,temp_ghost3_yPos
			call Gotoxy
			mov al,"o"
			call WriteChar

			mov eax,red (black * 16)
			call SetTextColor
			jmp retu
return:

mov eax,green (black * 16)
call SetTextColor

retu:
POP edx
POP edi
POP esi
POP eax
ret 

ghost3_food_restriction ENDP

;level2-food
Createfood_level2 PROC	

	PUSH ebx
	PUSH esi
	PUSH ecx

	mov eax,yellow (black * 16)
	call SetTextColor

	;emptying xy array of last level
	mov ecx,len_of_foodx
	mov esi,0
	emptying_array:
			mov foodx[esi],0
			mov foody[esi],0
			inc esi
			loop emptying_array

	mov len_of_foodx,0


	mov esi,-1


	mov bl,57
	labelx:
		mov dl,bl
		mov dh,15
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,70
		jne labelx

	mov bl,21
	label1:
		mov dl,bl
		mov dh,7
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,34
		jne label1

	mov bl,51
	label2:
		mov dl,bl
		mov dh,7
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,70
		jne label2

		
	mov bl,86
	label3:
		mov dl,bl
		mov dh,7
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,98
		jne label3

	mov bl,21
	label4:
		mov dl,bl
		mov dh,20
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,34
		jne label4

	mov bl,50
	label5:
		mov dl,bl
		mov dh,20
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,70
		jne label5

	mov bl,86
	label6:
		mov dl,bl
		mov dh,20
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,98
		jne label6

	mov bl,72
	label7:
		mov dl,bl
		mov dh,11
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy

		cmp dl,78
		jne next

		

		mov al,fruit
		mov eax,red (black * 16)
		call SetTextColor
		jmp next2

		next:
		mov eax,yellow (black * 16)
		call SetTextColor
		mov al,food
		next2:
		call WriteChar
		inc bl
		cmp bl,84
		jne label7

	mov bl,35
	label8:
		mov dl,bl
		mov dh,12
		inc esi
		mov foodx[esi],dl
		mov foody[esi],dh
		call Gotoxy
		mov al,food
		call WriteChar
		inc bl
		cmp bl,49
		jne label8

    inc esi
	mov len_of_foodx,esi
	mov len_of_foody,esi
	
	POP ecx
	POP esi
	POP ebx

Bonus_food:

	mov eax,green (green * 16)
	call SetTextColor

	mov esi,1

	label15:
		mov dl,bonusx[esi]
		mov dh,bonusy[esi]
		call Gotoxy
		mov al,bonus
		call WriteChar
		inc esi
		cmp esi,len_of_bonus
		jl label15

	mov eax,white (black * 16)
	call SetTextColor




	ret 

Createfood_level2 ENDP




;--BONUS COLLISION-----

Bonus_collision proc

PUSH eax
PUSH esi
PUSH edi
PUSH edx

mov eax,0
mov esi,0
mov edi,0



label1:
		cmp bonusx[esi],0
		je next1

		mov ah,xPos
		cmp bonusx[esi],ah
		je label2

		next1:
		inc esi
		cmp esi,len_of_foodx
		jle label1
		jmp return

label2:
		
		mov ah,yPos
		cmp bonusy[esi],ah
		je food_found

		inc esi
		cmp esi,len_of_foodx
		jle label1

		
food_found:
			mov bonusx[esi],0
			mov bonusy[esi],0

			cmp esi,0
			jne fruit_found

			inc lives_counter
			
			jmp return

			fruit_found:

			add score,10


return:

retu:
POP edx
POP edi
POP esi
POP eax
ret 


Bonus_collision endp




;------DISPLAYING STUFF-----
display_attributes proc

; draw score:
		mov eax,1011b (black * 16)
		call SetTextColor
		mov dl,54
		mov dh,27
		call Gotoxy
		mov edx,OFFSET strScore
		call WriteString
		mov eax,0
		mov ax,score
		call WriteDec

; draw lives:
		mov eax,1100b (black * 16)
		call SetTextColor
		mov dl,11
		mov dh,27
		call Gotoxy
		mov edx,OFFSET strLives
		call WriteString
		mov eax,0
		mov al,lives_counter
		call WriteDec

; draw level:
		mov eax,1010b (black * 16)
		call SetTextColor
		mov dl,101
		mov dh,27
		call Gotoxy
		mov edx,OFFSET strLevel
		call WriteString
		mov eax,0
		mov al,level_counter
		call WriteDec

; draw playername:
		mov eax,cyan (black * 16)
		call SetTextColor
		mov dl,11
		mov dh,1
		call Gotoxy
		mov edx,OFFSET strname
		mov ecx,lengthof strname
		call WriteString

		mov dl,24
		mov dh,1
		call Gotoxy
		mov edx,OFFSET playername
		mov ecx,lengthof playername
		call WriteString

	ret

display_attributes endp

;------STORING-PROCEDURES-----
storing_xy_to_temp proc
PUSH ebx
		mov bl,xPos
		mov tempx,bl
		mov bl,yPos
		mov tempy,bl
POP ebx
ret
storing_xy_to_temp endp

storing_ghost_xy_to_temp proc
PUSH ebx
		mov bl,ghost_xPos
		mov temp_ghost_xPos,bl
		mov bl,ghost_yPos
		mov temp_ghost_yPos,bl
POP ebx
ret
storing_ghost_xy_to_temp endp

storing_ghost2_xy_to_temp proc
PUSH ebx
		mov bl,ghost2_xPos
		mov temp_ghost2_xPos,bl
		mov bl,ghost2_yPos
		mov temp_ghost2_yPos,bl
POP ebx
ret
storing_ghost2_xy_to_temp endp

storing_ghost3_xy_to_temp proc
PUSH ebx
		mov bl,ghost3_xPos
		mov temp_ghost3_xPos,bl
		mov bl,ghost3_yPos
		mov temp_ghost3_yPos,bl
POP ebx
ret
storing_ghost3_xy_to_temp endp

storing_ghost4_xy_to_temp proc
PUSH ebx
		mov bl,ghost4_xPos
		mov temp_ghost4_xPos,bl
		mov bl,ghost4_yPos
		mov temp_ghost4_yPos,bl
POP ebx
ret
storing_ghost4_xy_to_temp endp


storing_ghost5_xy_to_temp proc
PUSH ebx
		mov bl,ghost5_xPos
		mov temp_ghost5_xPos,bl
		mov bl,ghost5_yPos
		mov temp_ghost5_yPos,bl
POP ebx
ret
storing_ghost5_xy_to_temp endp

;--------LEVEL END-----------
check_level2_end PROC


PUSH eax
PUSH esi
PUSH edi
PUSH ecx

mov eax,0
mov esi,0
mov edi,0

mov ecx,len_of_foodx
label1:
		cmp foodx[esi],0
		jne return

		inc esi
		loop label1

end_level:
			inc level_counter

return:
POP ecx
POP edi
POP esi
POP eax
ret 


check_level2_end ENDP

check_level3_end PROC


PUSH eax
PUSH esi
PUSH edi
PUSH ecx

mov eax,0
mov esi,0
mov edi,0

mov ecx,2997
label1:
		cmp maze_level3[esi],"o"
		je return

		inc esi
		loop label1

end_level:
			mov level_counter,1

return:
POP ecx
POP edi
POP esi
POP eax
ret 


check_level3_end ENDP


;-----CALLING LEVELS------
level1 proc


cmp score,196
jae end_level1
		
		;OTHER ATTRIBUTES
		call display_attributes

		mov eax,15
		call Delay

		
		;GHOST MOVEMENT AND COLLISION
		call Ghost_movement	
		call Check_Player_Ghost_collision

		;player eating food
		call Checkfood_collision


jmp return


end_level1:
mov level1_complete,1
mov xPos,15
mov yPos,15
mov total_score,0
inc level_counter
mov ghost_xPos,60
mov ghost_yPos,14
call Clrscr
call displaywalls
call display_inside_walls_level2
call Createfood_level2
call DrawGhost
call DrawGhost2	
call DrawGhost3
mov eax,white (black * 16)
call SetTextColor


return:

ret


level1 endp

level2 proc


cmp level_counter,2
jne end_level2
		
		;OTHER ATTRIBUTES
		call display_attributes

		mov eax,10
		call Delay
	
		;FOOD
		call Checkfood_collision

		;GHOST
		call Ghost_movement
		call Check_Player_Ghost_collision

		;Ghost2
		call Ghost_movement2
		call Check_Player_Ghost2_collision

		;Ghost
		call Ghost_movement3
		call Check_Player_Ghost3_collision

		;BONUS
		call Bonus_collision

		;GAME-END CHECKER
		;call check_game_end
		call check_level2_end	


jmp return


end_level2:
call Clrscr
mov level2_complete,1
mov xPos,12
mov yPos,3
mov tempx,12
mov tempy,2
mov total_score,0
mov move_player,0

mov ghost_xPos,21
mov ghost_yPos,15
mov ghost2_xPos,79
mov ghost2_yPos,15
mov ghost3_xPos,99
mov ghost3_yPos,15
mov ghost4_xPos,31
mov ghost4_yPos,15
call display_level3
call displaywalls
call DrawGhost
call DrawGhost2	
call DrawGhost3
call DrawGhost4
mov eax,white (black * 16)
call SetTextColor


return:

ret


level2 endp

level3 proc

cmp level_counter,3
jne end_level3
		
		;OTHER ATTRIBUTES
		call display_attributes

		;Maze-restriction
		call maze_restriction_level3

		;Food-Collision
		call food_collision_level3

		;GHOST
		call Ghost1_movement_level3
		call Check_Player_Ghost_collision

		;GHOST-2
		call Ghost2_movement_level3
		call Check_Player_Ghost2_collision
		
		;GHOST-3
		call Ghost3_movement_level3
		call Check_Player_Ghost3_collision

		;GHOST-4
		call Ghost4_movement_level3
		call Check_Player_Ghost4_collision

		;BONUS AND TELEPORTATION
		call bonus_collision_level3	
		call teleport_collision_level3

		;End level 3
		;call check_level3_end
		call check_level3_end

jmp return


end_level3:
call Clrscr
call game_end


return:

ret



level3 endp

game_end proc

cmp lives_counter,0
je lost
INVOKE PlaySound, OFFSET file_gamewin, NULL, 20001H
jmp agey
lost:
INVOKE PlaySound, OFFSET file_gamelost, NULL, 20001H

agey:
mov eax,red (black*16)
call setTextColor


call Clrscr


mov dl,15
mov dh,7
call Gotoxy




mov ecx,lengthof game_end_screen
imul ecx, ecx,9
mov esi,0
label1:
		cmp game_end_screen[esi]," "
		je space

		cmp game_end_screen[esi],0ah
		je new_line

		mov eax,red (black*16)
		call setTextColor

		jmp next


		space:
		mov eax,black (black*16)
		call setTextColor

		jmp next

		new_line:
		mov dl,15
		inc dh
		call Gotoxy
		inc esi

		loop label1

		next:
		mov al,game_end_screen[esi]
		call WriteChar

		inc esi
		loop label1

		mov eax,red (black*16)
call setTextColor

mov dl,40
mov dh,17
call Gotoxy




mov ecx,lengthof box1
imul ecx, ecx,5
dec ecx
mov esi,0
label2:
		
		cmp box1[esi]," "
		je space1

		cmp box1[esi],0ah
		je new_line1

		mov eax,cyan (black*16)
		call setTextColor

		jmp next1


		space1:
		mov eax,black (black*16)
		call setTextColor

		jmp next1

		new_line1:
		mov dl,40
		inc dh
		call Gotoxy
		inc esi

		loop label2

		next1:
		mov al,box1[esi]
		call WriteChar

		inc esi
		loop label2


	mov dl,43
	mov dh,18
	call Gotoxy
	mWrite "PLAYER NAME:  "

	mov dl,57
	mov dh,18
	call Gotoxy
	mov edx,offset playername
	mov ecx,lengthof playername
	call WriteString

	

	mov dl,43
	mov dh,20
	call Gotoxy
	mWrite "YOUR SCORE:  "


	mov dl,57
	mov dh,20
	call Gotoxy
	mov eax,0
	mov ebx,0
	mov ecx,10
	mov ax,score
	mov bl,lives_counter
	imul ecx,ebx
	add eax,ecx


	call WriteDec



call ReadChar
mov inputChar,al

call ReadChar
mov inputChar,al

call ReadChar
mov inputChar,al


game_end endp



END main
