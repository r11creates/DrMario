######################## Bitmap Display Configuration ########################
# - Unit width in pixels:       8
# - Unit height in pixels:      8
# - Display width in pixels:    512
# - Display height in pixels:   384
# - Base Address for Display:   0x10008000 ($gp)
##############################################################################

    .data
##############################################################################
# Immutable Data
##############################################################################
# The address of the bitmap display. Don't forget to connect it!
ADDR_DSPL:
    .word 0x10008000
# The address of the keyboard. Don't forget to connect it!
ADDR_KBRD:
    .word 0xffff0000

W_KEY: .word 0x77
A_KEY: .word 0x61
S_KEY: .word 0x73
D_KEY: .word 0x64
Q_KEY: .word 0x71
##############################################################################
# Mutable Data
##############################################################################

# Display Configuration
NUM_COLS: .word 64
NUM_ROWS: .word 48

# Colors
BLACK:     .word 0x000000
BROWN:     .word 0x8B4513
SKIN:      .word 0xFFD39B
WHITE:     .word 0xFFFFFF
GREY:      .word 0xC0C0C0
RED:       .word 0xFF0000
GREEN:     .word 0x00FF00
YELLOW:    .word 0xFFFF00
GREY_BLUE: .word 0xB2B2D3
NAVY:      .word 0x0000AA


# Virus Colors
RED_v: .word 0x01FF0060
GREEN_v: .word 0x0100FF60
YELLOW_v: .word 0x01FFFF60

red_virus_addr: .word 0x01
green_virus_addr: .word 0x01
yellow_virus_addr: .word 0x01

gravity_rate: .word 15   # Number of Frames before Gravity is Applied
frame_rate: .word 16     # 60 Hz Frame Rate
gravity_count: .word 0   # how many times gravity has incremented
gravity_speed_counter_limit: .word 5 # Speed Increases Every 5 Capsules
gravity_speed_counter: .word 0

song_rate: .word 5   # Number of Frames before Note is Played
song_count: .word 0
song:
    .word 39, 100, 0, 100
    .word 37, 0, 0, 100
    .word 38, 100, 0, 100
    .word 35, 0, 0, 100
    .word 36, 100, 0, 100
    .word 34, 100, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 31, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 1000, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 27, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 31, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 1000, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 27, 1800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 31, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 1000, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 27, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 31, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 1000, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 100, 0, 100
    .word 27, 100, 0, 100
    .word 27, 200, 0, 100
    .word 30, 200, 0, 100
    .word 27, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 800, 0, 100
    .word 32, 1600, 0, 100
    .word 35, 1600, 0, 100
    .word 37, 1600, 0, 100
    .word 38, 1600, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 800, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 6800, 0, 100
    .word 39, 100, 0, 100
    .word 37, 0, 0, 100
    .word 38, 100, 0, 100
    .word 35, 0, 0, 100
    .word 36, 100, 0, 100
    .word 34, 100, 0, 100
    .word 32, 100, 0, 100
    .word 32, 100, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 200, 0, 100
    .word 32, 100, 0, 100
    .word 32, 100, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 33, 200, 0, 100
    .word 32, 200, 0, 100
    .word 33, 200, 0, 100
    .word 32, 100, 0, 100
    .word 32, 100, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 35, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 27, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 200, 0, 100
    .word 32, 1000, 0, 100
    .word 37, 100, 0, 100
    .word 37, 400, 0, 100
    .word 29, 300, 0, 100
    .word 30, 400, 0, 100
    .word 32, 400, 0, 100
    .word 34, 200, 0, 100
    .word 34, 200, 0, 100
    .word 32, 100, 0, 100
    .word 34, 500, 0, 100
    .word 40, 100, 0, 100
    .word 41, 200, 0, 100
    .word 37, 200, 0, 100
    .word 32, 100, 0, 100
    .word 37, 100, 0, 100
    .word 37, 400, 0, 100
    .word 29, 300, 0, 100
    .word 30, 400, 0, 100
    .word 32, 400, 0, 100
    .word 34, 200, 0, 100
    .word 34, 200, 0, 100
    .word 32, 100, 0, 100
    .word 34, 500, 0, 100
    .word 40, 100, 0, 100
    .word 41, 200, 0, 100
    .word 37, 200, 0, 100
    .word 32, 100, 0, 100
    .word 37, 100, 0, 100
    .word 37, 400, 0, 100
    .word 29, 300, 0, 100
    .word 30, 400, 0, 100
    .word 32, 400, 0, 100
    .word 34, 200, 0, 100
    .word 34, 200, 0, 100
    .word 32, 100, 0, 100
    .word 34, 500, 0, 100
    .word 40, 100, 0, 100
    .word 41, 200, 0, 100
    .word 37, 200, 0, 100
    .word 32, 100, 0, 100
    .word 37, 100, 0, 100
    .word 37, 400, 0, 100
    .word 29, 300, 0, 100
    .word 30, 400, 0, 100
    .word 32, 400, 0, 100
    .word 34, 200, 0, 100
    .word 34, 200, 0, 100
    .word 32, 100, 0, 100
    .word 34, 500, 0, 100
    .word 40, 100, 0, 100
    .word 41, 200, 0, 100
    .word -1, 0, 0, 0


##############################################################################
# Code
##############################################################################

### $s0: Capsule 1 Address
### $s1: Capsule 2 Address
### $s2: Rotation State (Vertical/Horizontal)
### $s3: Capsule State (Falling/Blocked)
### $s4: Frame Count (0:59)
### $s5: Note Count
	.text
	.globl main

    # Run the game.
main:
  
  # Draw Screen
  la $ra, game_loop
  la $s5, song         # base address of note array
  j draw_bottle
  # jal clear_screen
  # jal draw_game_screen
  # Game Loop


# Draw the Initial Bottle
draw_bottle:
  # left wall
  li   $a0, 15     # top row index
  li   $a1, 3      # col index
  li   $a2, 30     # height => how deep it will go down
  lw   $a3, WHITE  # color
  jal  draw_vline

  # right wall
  li   $a0, 15     # top row index
  li   $a1, 23     # col index
  li   $a2, 30     # height
  lw   $a3, WHITE  # color
  jal  draw_vline

  # base
  li   $a0, 45      # top row index
  li   $a1, 4       # col index
  li   $a2, 19      # width
  lw   $a3, WHITE   # color
  jal  draw_hline

  # neck_base
  li   $a0, 14      # top row index
  li   $a1, 3     # col index
  li   $a2, 7    # width
  lw   $a3, WHITE  # color
  jal  draw_hline
  
  li   $a0, 14    # top row index
  li   $a1, 17     # col index
  li   $a2, 7     # width
  lw   $a3, WHITE  # color
  jal  draw_hline

  # neck
  ## left wall
  li   $a0, 9      # top row index
  li   $a1, 10      # col index
  li   $a2, 5     # height => how deep it will go down
  lw   $a3, WHITE  # color
  jal  draw_vline

  li   $a0, 8    # top row index
  li   $a1, 6     # col index
  li   $a2, 4     # width
  lw   $a3, WHITE  # color
  jal  draw_hline
  
  li   $a0, 4      # top row index
  li   $a1, 5      # col index
  li   $a2, 4     # height => how deep it will go down
  lw   $a3, WHITE  # color
  jal  draw_vline

  ## neck
  ## right wall
  li   $a0, 9      # top row index
  li   $a1, 16     # col index
  li   $a2, 5     # height
  lw   $a3, WHITE  # color
  jal  draw_vline

  li   $a0, 8    # top row index
  li   $a1, 17     # col index
  li   $a2, 4     # width
  lw   $a3, WHITE  # color
  jal  draw_hline
  
  li   $a0, 4      # top row index
  li   $a1, 21      # col index
  li   $a2, 4     # height => how deep it will go down
  lw   $a3, WHITE  # color
  jal  draw_vline

  ## Cap
  li   $a0, 4    # top row index
  li   $a1, 6     # col index
  li   $a2, 15     # width
  lw   $a3, GREY  # color
  jal  draw_hline

  lw   $a0, RED_v      
  jal  place_virus
  sw $v0, red_virus_addr

  lw   $a0, GREEN_v      
  jal  place_virus
  sw $v0, green_virus_addr

  lw   $a0, YELLOW_v      
  jal  place_virus
  sw $v0, yellow_virus_addr

# Draws a Dr. Mario sprite
draw_dr_mario:
  
    ######################
    # headband
    ######################
    li $a0, 8
    li $a1, 46
    lw $a2, BROWN
    jal colorUnit
    li $a1, 47
    jal colorUnit
    li $a1, 48
    jal colorUnit
    li $a1, 49
    jal colorUnit
    li $a1, 50
    jal colorUnit
    
    lw $a2, GREY
    li $a1, 51
    jal colorUnit

    li $a0, 9
    jal colorUnit

    li $a1, 45
    li $a2, 6
    lw $a3, GREY_BLUE
    jal draw_hline
    
    # ######################
    # hair + eye + face
    # ######################
    li $a0, 10
    li $a1, 44
    li $a2, 3
    lw $a3, BROWN
    jal draw_hline

    li $a1, 47
    li $a2, 3
    lw $a3, SKIN
    jal draw_hline

    li $a1, 50
    li $a2, 2
    lw $a3, WHITE
    jal draw_vline

    li $a0, 10
    li $a1, 52
    li $a2, 2
    lw $a3, SKIN
    jal draw_vline

    li $a0, 11
    li $a1, 53
    li $a2, 2
    lw $a3, SKIN
    jal draw_vline

    li $a0, 11
    li $a1, 54
    li $a2, 2
    lw $a3, SKIN
    jal draw_vline

    li $a0, 12
    li $a1, 55
    lw $a2, SKIN
    jal colorUnit

    li $a0, 11
    li $a1, 44
    li $a2, 2
    lw $a3, SKIN
    jal draw_vline

    li $a0, 11
    li $a1, 45
    li $a2, 2
    lw $a3, BROWN
    jal draw_vline

    li $a0, 11
    li $a1, 46
    li $a2, 4
    lw $a3, SKIN
    jal draw_hline

    li $a0, 12
    li $a1, 47
    li $a2, 4
    lw $a3, SKIN
    jal draw_hline

    li $a0, 12
    li $a1, 46
    lw $a2, BROWN
    jal colorUnit

    li $a0, 11
    li $a1, 43
    li $a2, 3
    lw $a3, BROWN
    jal draw_vline

    li $a0, 13
    li $a1, 44
    lw $a2, BROWN
    jal colorUnit

    li $a0, 13
    li $a1, 45
    li $a2, 6
    lw $a3, SKIN
    jal draw_hline
    
    li $a0, 14
    li $a1, 46
    li $a2, 9
    lw $a3, SKIN
    jal draw_hline
    
    # ######################
    # coat + hands
    # ######################

    li $a0, 15
    li $a1, 46
    lw $a2, GREY_BLUE
    jal colorUnit

    li $a0, 15
    li $a1, 47
    li $a2, 2
    lw $a3, WHITE
    jal draw_hline

    li $a0, 15
    li $a1, 49
    li $a2, 3
    lw $a3, RED
    jal draw_hline

    li $a0, 16
    li $a1, 49
    lw $a2, RED
    jal colorUnit

    li $a0, 16
    li $a1, 50
    li $a2, 3
    lw $a3, WHITE
    jal draw_hline

    li $a0, 16
    li $a1, 48
    lw $a2, WHITE
    jal colorUnit
    
    li $a0, 16
    li $a1, 47
    lw $a2, GREY_BLUE
    jal colorUnit
    
    li $a0, 16
    li $a1, 45
    li $a2, 2
    lw $a3, WHITE
    jal draw_hline

    li $a0, 17
    li $a1, 44
    li $a2, 4
    lw $a3, WHITE
    jal draw_hline

    li $a0, 17
    li $a1, 48
    li $a2, 2
    lw $a3, GREY_BLUE
    jal draw_hline
    
    li $a0, 17
    li $a1, 50
    li $a2, 8
    lw $a3, WHITE
    jal draw_hline

    li $a0, 16
    li $a1, 56
    li $a2, 2
    lw $a3, WHITE
    jal draw_hline

    li $a0, 16
    li $a1, 58
    li $a2, 2
    lw $a3, GREY_BLUE
    jal draw_vline

    li $a0, 15
    li $a1, 59
    li $a2, 3
    lw $a3, GREY
    jal draw_vline

    ### Capsule position. row = 15, column = 60. this will be the botton half. so row = 14 will be top half.
    jal random_color
    move $a2, $v0 # color
    li $a0, 15 # Bottom Half
    li $a1, 60
    jal colorUnit

    jal random_color
    move $a2, $v0 # color
    li $a0, 14 # Top Half
    li $a1, 60
    jal colorUnit

    ### Capsule
    
    li $a0, 16
    li $a1, 60
    li $a2, 2
    lw $a3, GREY
    jal draw_vline

    li $a0, 18
    li $a1, 43
    li $a2, 6
    lw $a3, WHITE
    jal draw_hline

    li $a0, 18
    li $a1, 49
    li $a2, 2
    lw $a3, GREY_BLUE
    jal draw_hline

    li $a0, 18
    li $a1, 51
    li $a2, 6
    lw $a3, WHITE
    jal draw_hline

    li $a0, 19
    li $a1, 42
    li $a2, 14
    lw $a3, WHITE
    jal draw_hline
    
    li $a0, 20
    li $a1, 42
    li $a2, 2
    lw $a3, GREY_BLUE
    jal draw_hline

    li $a0, 20
    li $a1, 44
    li $a2, 11
    lw $a3, WHITE
    jal draw_hline
        
    li $a0, 21
    li $a1, 42
    li $a2, 3
    lw $a3, GREY
    jal draw_hline

    li $a0, 21
    li $a1, 45
    li $a2, 10
    lw $a3, WHITE
    jal draw_hline

    li $a0, 22
    li $a1, 42
    li $a2, 2
    lw $a3, GREY
    jal draw_hline

    li $a0, 22
    li $a1, 44
    li $a2, 11
    lw $a3, WHITE
    jal draw_hline

    # ######################
    # pants + shoes
    # ######################
    
    li $a0, 23
    li $a1, 44
    li $a2, 4
    lw $a3, NAVY
    jal draw_hline

    li $a0, 23
    li $a1, 51
    li $a2, 4
    lw $a3, NAVY
    jal draw_hline

    li $a0, 24
    li $a1, 43
    li $a2, 4
    lw $a3, BROWN
    jal draw_hline
    
    li $a0, 24
    li $a1, 51
    li $a2, 4
    lw $a3, BROWN
    jal draw_hline

    li $a0, 25
    li $a1, 42
    li $a2, 5
    lw $a3, BROWN
    jal draw_hline
    
    li $a0, 25
    li $a1, 51
    li $a2, 5
    lw $a3, BROWN
    jal draw_hline

draw_green_virus:

    li $a0, 34
    li $a1, 31
    li $a2, 1
    lw $a3, GREEN_v
    jal draw_vline

    li $a0, 34
    li $a1, 33
    li $a2, 1
    lw $a3, GREEN_v
    jal draw_vline

    li $a0, 35
    li $a1, 30
    li $a2, 4
    lw $a3, GREEN_v
    jal draw_vline

    li $a0, 35
    li $a1, 31
    lw $a2, WHITE
    jal colorUnit

    li $a0, 35
    li $a1, 34
    li $a2, 2
    lw $a3, GREEN_v
    jal draw_hline

    li $a0, 35
    li $a1, 32
    lw $a2, GREEN_v
    jal colorUnit

    li $a0, 36
    li $a1, 32
    li $a2, 2
    lw $a3, GREEN_v
    jal draw_vline

    li $a0, 36
    li $a1, 34
    li $a2, 2
    lw $a3, GREEN_v
    jal draw_vline

    li $a0, 35
    li $a1, 33
    lw $a2, WHITE
    jal colorUnit

    li $a0, 36
    li $a1, 35
    li $a2, 3
    lw $a3, GREEN_v
    jal draw_vline

    li $a0, 38
    li $a1, 30
    li $a2, 6
    lw $a3, GREEN_v
    jal draw_hline

    li $a0, 39
    li $a1, 30
    li $a2, 6
    lw $a3, GREEN_v
    jal draw_hline

    li $a0, 40
    li $a1, 31
    li $a2, 4
    lw $a3, GREEN_v
    jal draw_hline

draw_red_virus:

    li $a0, 33
    li $a1, 42
    li $a2, 2
    lw $a3, RED_v
    jal draw_hline

    li $a0, 34
    li $a1, 41
    li $a2, 4
    lw $a3, RED_v
    jal draw_hline

    li $a0, 35
    li $a1, 40
    li $a2, 2
    lw $a3, RED_v
    jal draw_hline

    li $a0, 35
    li $a1, 42
    lw $a2, WHITE
    jal colorUnit

    li $a0, 35
    li $a1, 44
    li $a2, 2
    lw $a3, RED_v
    jal draw_hline

    li $a0, 36
    li $a1, 40
    li $a2, 2
    lw $a3, RED_v
    jal draw_hline

    li $a0, 36
    li $a1, 44
    li $a2, 2
    lw $a3, RED_v
    jal draw_hline

    li $a0, 37
    li $a1, 40
    li $a2, 6
    lw $a3, RED_v
    jal draw_hline

    li $a0, 38
    li $a1, 41
    li $a2, 4
    lw $a3, RED_v
    jal draw_hline

    li $a0, 39
    li $a1, 41
    lw $a2, WHITE
    jal colorUnit

    li $a0, 39
    li $a1, 44
    lw $a2, WHITE
    jal colorUnit

draw_yellow_virus:

    li $a0, 35
    li $a1, 51
    li $a2, 2
    lw $a3, YELLOW_v
    jal draw_hline
    
    li $a0, 36
    li $a1, 50
    li $a2, 3
    lw $a3, YELLOW_v
    jal draw_hline
    
    li $a0, 37
    li $a1, 50
    li $a2, 6
    lw $a3, YELLOW_v
    jal draw_hline

    li $a0, 38
    li $a1, 52
    lw $a2, WHITE
    jal colorUnit
    
    li $a0, 38
    li $a1, 53
    lw $a2, YELLOW_v
    jal colorUnit
    
    li $a0, 38
    li $a1, 55
    lw $a2, WHITE
    jal colorUnit

    li $a0, 38
    li $a1, 56
    lw $a2, YELLOW_v
    jal colorUnit

    li $a0, 35
    li $a1, 56
    li $a2, 2
    lw $a3, YELLOW_v
    jal draw_vline
    
    li $a0, 35
    li $a1, 55
    li $a2, 2
    lw $a3, YELLOW_v
    jal draw_vline

    li $a0, 36
    li $a1, 57
    lw $a2, YELLOW_v
    jal colorUnit

    li $a0, 39
    li $a1, 51
    li $a2, 6
    lw $a3, YELLOW_v
    jal draw_hline

    li $a0, 40
    li $a1, 50
    li $a2, 3
    lw $a3, YELLOW_v
    jal draw_hline

    li $a0, 40
    li $a1, 55
    li $a2, 3
    lw $a3, YELLOW_v
    jal draw_hline
    
# Draw a New Capsule at the Top
new_capsule_draw:

  ## Add to Speed_counter
  lw $t0, gravity_speed_counter
  addi $t0, $t0, 1
  lw $t1, gravity_speed_counter_limit
  sw $t0, gravity_speed_counter
  bne $t0, $t1, skip_gravity_speed_update
  la $t2, gravity_rate
  lw $t3, 0($t2)
  addi $t3, $t3, -2
  ble $t2, 8, skip_gravity_speed_update
  sw $t3, 0($t2)
  sw $zero, gravity_speed_counter

skip_gravity_speed_update:
  ## Check Space
 
  ## capsule

  li $a0, 10     # Row
  li $a1, 13    # Column
  
  # Check Empty Space
  lw $a2, BLACK
  jal check_color
  beq $v0, $zero, END_PROGRAM
  
  #Place Value
  # jal random_color
  li $a0, 14     # Row
  li $a1, 60    # Column
  jal get_color
  li $a0, 10     # Row
  li $a1, 13    # Column
  move $a2, $v0 # color
  jal colorUnit
  move $s0, $v0 # Save Location of Capsule 1
  

  li $a0, 11     # Row
  li $a1, 13    # Column

  # Check Empty Space
  lw $a2, BLACK
  jal check_color
  beq $v0, $zero, END_PROGRAM

  # Place Value
  li $a0, 15     # Row
  li $a1, 60    # Column
  jal get_color
  li $a0, 11     # Row
  li $a1, 13    # Column
  move $a2, $v0 # color
  jal colorUnit
  move $s1, $v0 # Save Location of Capsule 2

  add $s2, $zero, $zero # Save Rotation State
  add $s3, $zero, $zero  # Reset capsule to Falling state

  ### New Capsule in Hand
  jal random_color
  move $a2, $v0 # color
  li $a0, 15 # Bottom Half
  li $a1, 60
  jal colorUnit

  jal random_color
  move $a2, $v0 # color
  li $a0, 14 # Top Half
  li $a1, 60
  jal colorUnit
  

  j game_loop

## CLEAR VIRUSES
clear_red_virus:

  move $t7, $ra

  li $a0, 33
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 34
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  
  li $a0, 35
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 36
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 37
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 38
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 39
  li $a1, 40
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  jr $t7

clear_green_virus:

  move $t7, $ra

  li $a0, 34
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  
  li $a0, 35
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 36
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 37
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 38
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 39
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  li $a0, 40
  li $a1, 30
  li $a2, 6
  lw $a3, BLACK
  jal draw_hline

  jr $t7

clear_yellow_virus:

  move $t7, $ra
  
  li $a0, 35
  li $a1, 50
  li $a2, 10
  lw $a3, BLACK
  jal draw_hline

  li $a0, 36
  li $a1, 50
  li $a2, 10
  lw $a3, BLACK
  jal draw_hline

  li $a0, 37
  li $a1, 50
  li $a2, 10
  lw $a3, BLACK
  jal draw_hline

  li $a0, 38
  li $a1, 50
  li $a2, 10
  lw $a3, BLACK
  jal draw_hline

  li $a0, 39
  li $a1, 50
  li $a2, 10
  lw $a3, BLACK
  jal draw_hline

  li $a0, 40
  li $a1, 50
  li $a2, 10
  lw $a3, BLACK
  jal draw_hline

  jr $t7


# check_empty_position returns if a position is empty or not
# it takes 1 argument:
# $a0 - row index. the row it starts from.
# $a1 - col index. the col it starts from.

# it returns 1 value:
# $s3 - Position is empty
################################################################################
check_empty_position:
  lw $t0, 0($a0)
  lw $t1, BLACK
  beq $t0, $t1, position_empty

position_empty:
  add $s3, $zero, $zero
  jr $ra


# draw_vline draws a vertical line
# it takes 4 arguments:
# $a0 - row index. the row it starts the rectangle from.
# $a1 - col index. the col it starts the rectangle from.
# $a2 - height. the height/depth it colors the rectangle for.
# $a3 - color. uses it to choose the color.

# this function calls colorUnit on each unit.
################################################################################
draw_vline:
  # store the inputs in s-registers
  move $s0, $ra
  move $s1, $a0  # row
  move $s2, $a1  # col
  move $s3, $a2  # height
  move $s4, $a3  # color
  add $t5, $zero, $zero

draw_vline_loop:
  beq $t5, $s3, end_vline

  #Color Spot
  add $t6, $t5, $s1 # t6 = count + row
  move $a0, $t6
  move $a1, $s2
  move $a2, $s4
  jal colorUnit
  addi $t5, $t5, 1
  j draw_vline_loop

end_vline:
  move $ra, $s0
  jr $ra

# draw_hline draws a horizontal line
# it takes 4 arguments:
# $a0 - row index. the row it starts the line from.
# $a1 - col index. the col it starts the line from.
# $a2 - width. the width it colors the line for.
# $a3 - color. uses it to choose the color.

# this function calls colorUnit on each unit.
################################################################################
draw_hline:
  # store the inputs in other registers
  move $v1, $ra
  # row in $a0
  move $t8, $a1  # col
  move $t9, $a2  # width
  move $a2, $a3  # color
  add $t5, $zero, $zero

draw_hline_loop:
  beq $t5, $t9, end_hline

  #Color Spot
  add $t6, $t5, $t8 # t6 = count + row

  move $a1, $t6
  jal colorUnit
  addi $t5, $t5, 1
  j draw_hline_loop

end_hline:
  move $ra, $v1
  jr $ra


# get_position takes 2 arguments:
# $a0 - the row index
# $a1 - the col index
# $v0 - position
get_position:
  lw  $t0, ADDR_DSPL      # $t0 is now the base address itself. 

  lw  $t1, NUM_COLS
  mul $t2, $a0, $t1     # $t2 = row * NUM_COLS
  add $t2, $t2, $a1     # $t2 = row * NUM_COLS + col
  sll $t2, $t2, 2       # $t2 = 4 * (row * NUM_COLS + col)

  add $v0, $t0, $t2
  jr $ra

# check_color takes 3 arguments:
# $a0 - the row index
# $a1 - the col index
# $a2 - the color hex
# $v0 - Is Correct Color
check_color:
  move $t6, $ra
  jal get_position
  move $ra, $t6

  lw $t0, 0($v0)
  beq $t0, $a2, correct_color # Correct Color Value
  # Incorrect Color Value

  add $v0, $zero, $zero
  jr $ra

correct_color:
  addi $v0, $zero, 1
  jr $ra

# colorUnit takes 3 arguments:
# $a0 - the row index
# $a1 - the col index
# $a2 - the color hex
# $v0 - Address of Unit
colorUnit:

  # each unit takes 4 bytes in memory
  # offset from base address would be:
  # ADDR_DSPL + 4 * (row * NUM_COLS + col)
  # ADDR_DSPL is a pointer to the memory address of display's base address.
  lw  $t0, ADDR_DSPL      # $t0 is now the base address itself. 

  lw  $t1, NUM_COLS
  mul $t2, $a0, $t1     # $t2 = row * NUM_COLS
  add $t2, $t2, $a1     # $t2 = row * NUM_COLS + col
  sll $t2, $t2, 2       # $t2 = 4 * (row * NUM_COLS + col)

  add $t0, $t0, $t2 

  sw  $a2, 0($t0)     # $a2 contains the color we wanted to fill that unit $t0 points to with.
  move $v0 $t0

  jr  $ra               # return to where the function was called

get_color:
  lw  $t0, ADDR_DSPL      # $t0 is now the base address itself. 

  lw  $t1, NUM_COLS
  mul $t2, $a0, $t1     # $t2 = row * NUM_COLS
  add $t2, $t2, $a1     # $t2 = row * NUM_COLS + col
  sll $t2, $t2, 2       # $t2 = 4 * (row * NUM_COLS + col)
  add $t0, $t0, $t2 

  lw  $v0, 0($t0)     # $a2 contains the color we wanted to fill that unit $t0 points to with.
  jr  $ra               # return to where the function was called


# random_color returns a random color value between RED, GREEN & YELLOW
# it takes 4 arguments:
# $v0 - COLOR VALUE

# this function calls colorUnit on each unit.
################################################################################
random_color:
  li $v0, 42
  li $a0, 0
  li $a1, 3
  syscall

  beq $a0, 0, color_red
  beq $a0, 1, color_yellow
  beq $a0, 2, color_green

color_red:
  lw $v0, RED
  jr $ra

color_yellow:
  lw $v0, YELLOW
  jr $ra

color_green:
  lw $v0, GREEN
  jr $ra

#########################################################################################
# START GAME game_loop
#########################################################################################
# game_loop is the main game's loop.
# We keep track of the following:
# $s0- Capsule 1 Address
# $s1- Capsule 2 Address
# $s2- Rotation State (Vertical/Horizontal)
# $s3- Capsule State (Falling/Blocked)

# this function calls colorUnit on each unit.
################################################################################
game_loop:

    # Wait for Next Frame
    li $v0, 32 # sleep syscall
    la $t1, frame_rate
    lw $a0, 0($t1)     # load fame rate frequency as sleep duration for syscall
    syscall
  
    # 1a. Check if key has been pressed
    lw $t0, ADDR_KBRD               # $t0 = base address for keyboard
    lw $t8, 0($t0)                  # Load first word from keyboard
    beq $t8, 1, keyboard_input

    # 2. gravity (only if capsule is falling)

check_gravity_counter:

    # Add 1 to Gravity Counter
    la $t0, gravity_count
    lw $t1, 0($t0)
    addi $t1, $t1, 1

    # Apply Gravity if Rate
    lw $t2, gravity_rate
    ble $t1, $t2, skip_gravity
    jal add_gravity
    
    # Reset Gravity Counter
    move $t1, $zero
    # Save Gravity Counter
    la $t0, gravity_count
    sw $t1, 0($t0)
    j keyboard_input

skip_gravity:
  # Save Gravity Counter
  sw $t1, 0($t0)
  j check_song_counter

loop_song:
  la $s5, song         # base address of note array

check_song_counter:

    # Add 1 to Song Counter
    la $t0, song_count
    lw $t1, 0($t0)
    addi $t1, $t1, 1

    # Play Song if Rate
    lw $t2, song_rate
    bne $t1, $t2, skip_song
    jal play_note
    
    # Reset Song Counter
    move $t1, $zero
    # Save Song Counter
    la $t0, song_count
    sw $t1, 0($t0)
    j skip_song

play_note:
    lw $a0, 0($s5)       # pitch
    li $t1, -1
    beq $a0, $t1, loop_song

    lw $a1, 4($s5)       # duration
    lw $a2, 8($s5)       # instrument
    lw $a3, 12($s5)      # volume

    li $v0, 31           # MIDI Out
    syscall
    
    addiu $s5, $s5, 16   # move to next note
    jr $ra

skip_song:
  # Save Gravity Counter
  sw $t1, 0($t0)

keyboard_input:                     # A key is pressed
    lw $a0, 4($t0)                  # Load second word from keyboard
    
    # Check Quit Key
    lw $t0, Q_KEY
    beq $a0, $t0, respond_to_Q     # Check if the key q was pressed

    # Check Rotate Key (W)
    lw $t0, W_KEY
    beq $a0, $t0, respond_to_W

keyboard_input_A:
  # Check Left Key (A)da
  lw $t0, A_KEY
  beq $a0, $t0, respond_to_A

  # Check Right Key (D)
  lw $t0, D_KEY
  beq $a0, $t0, respond_to_D

keyboard_input_S:
  # Check Down Key (S)
  lw $t0, S_KEY
  beq $a0, $t0, respond_to_S

check_matches:
  jal mark_matches    # Replace Blue Values with FF if they are part of a position_empty
  jal destroy_matches # Replace all Blocks with FF Blue Values.
  jal check_viruses
  jal move_dangling
  j game_loop


#########################################################################################
# END GAME game_loop
#########################################################################################

check_viruses:
  sw $ra, 0($sp)
  lw $t0, red_virus_addr
  beq $t0, $zero, check_green_virus
  lw $t0, 0($t0)
  bne $t0, $zero, check_green_virus
  jal clear_red_virus
  sw $zero, red_virus_addr

check_green_virus:
  lw $t0, green_virus_addr
  beq $t0, $zero, check_yellow_virus
  lw $t0, 0($t0)
  bne $t0, $zero, check_yellow_virus
  jal clear_green_virus
  sw $zero, green_virus_addr

check_yellow_virus:

  lw $t0, yellow_virus_addr
  beq $t0, $zero, all_virus_check
  lw $t0, 0($t0)
  bne $t0, $zero, end_virus_check
  jal clear_yellow_virus
  sw $zero, yellow_virus_addr

all_virus_check:
  ### Check if All Viruses are Gone:
  lw $t0, red_virus_addr
  bne $t0, $zero, end_virus_check
  lw $t0, green_virus_addr
  bne $t0, $zero, end_virus_check
  lw $t0, yellow_virus_addr
  bne $t0, $zero, end_virus_check

  ## ALL Viruses are Gone!
  j END_PROGRAM

end_virus_check:
  lw $ra, 0($sp)
  jr $ra


### $t0: Row 
### $t1: Column
### $t3: Bottle Address
mark_matches:
  move $t0, $zero # Row
  move $t1, $zero # Column
  
  # Block Address
  lw $t3, ADDR_DSPL
  addi $t3, $t3, 16 # 4th Column
  lw $t4, NUM_COLS
  mult $t2, $t4, 15
  sll $t2, $t2, 2

  add $t3, $t3, $t2 # Address of Bottle

mark_loop:

  li $t2, 19
  bne $t1, $t2, check_row_limit
  # Go to Next Row
  move $t1, $zero
  addi $t0, $t0, 1
  
check_row_limit:
  
  li $t2, 30
  beq $t0, $t2, return_matches

  # Current Address
  move $t2, $t3
  sll $t5, $t1, 2 # Column * 4
  add $t2, $t2, $t5 
  
  lw $t4, NUM_COLS
  mult $t4, $t4, $t0
  sll $t4, $t4, 2   # Row * NUM_COLS * 4

  add $t2, $t2, $t4 # Address of Current Spot

  # Check Horizontal

    # Ignore Out of Bounds:
    li $t8, 16
    bge $t1, $t8, check_vertically
    
    # Ignore if Falling Capsule part of set or empty
    move $t4, $t2
    
    beq $t4, $s0, check_next_spot    # The current Spot itself is the Pill So Ignore
    beq $t4, $s1, check_next_spot    # The current Spot itself is the Pill So Ignore
    lw $t5, 0($t4)
    beq $t5, $zero, check_next_spot
  
    addi $t4, $t4, 4
    beq $t4, $s0, check_vertically
    beq $t4, $s1, check_vertically
    lw $t5, 0($t4)
    beq $t5, $zero, check_vertically

    addi $t4, $t4, 4
    beq $t4, $s0, check_vertically
    beq $t4, $s1, check_vertically
    lw $t5, 0($t4)
    beq $t5, $zero, check_vertically

    addi $t4, $t4, 4
    beq $t4, $s0, check_vertically
    beq $t4, $s1, check_vertically
    lw $t5, 0($t4)
    beq $t5, $zero, check_vertically

    # Check if Masked Value is equal to start position_empty
    move $t4, $t2
    li $t5, 0xFFFF00
    lw $t6, 0($t2)
    and $t6, $t6, $t5
  
    lw $t7, 4($t4)
    and $t7, $t7, $t5
    bne $t6, $t7, check_vertically
  
    lw $t7, 8($t4)
    and $t7, $t7, $t5
    bne $t6, $t7, check_vertically
  
    lw $t7, 12($t4)
    and $t7, $t7, $t5
    bne $t6, $t7, check_vertically
  
    # All Are Equal So Mark Them
    lw $t6, 0($t4)
    or $t6, $t6, 0x0000FF
    sw $t6, 0($t4)
    
    lw $t6, 4($t4)
    or $t6, $t6, 0x0000FF
    sw $t6, 4($t4)

    lw $t6, 8($t4)
    or $t6, $t6, 0x0000FF
    sw $t6, 8($t4)
    
    lw $t6, 12($t4)
    or $t6, $t6, 0x0000FF
    sw $t6, 12($t4)
  
  
check_vertically:
  # Check Vertical

  # Ignore Out of Bounds:
    li $t8, 27
    bge $t0, $t8, check_next_spot
  
  # Ignore if Falling Capsule part of set or empty
    move $t4, $t2
    lw $t6, NUM_COLS
    sll $t6, $t6, 2
  
    add $t4, $t4, $t6
    beq $t4, $s0, check_next_spot
    beq $t4, $s1, check_next_spot
    lw $t5, 0($t4)
    beq $t5, $zero, check_next_spot

    add $t4, $t4, $t6
    beq $t4, $s0, check_next_spot
    beq $t4, $s1, check_next_spot
    lw $t5, 0($t4)
    beq $t5, $zero, check_next_spot

    add $t4, $t4, $t6
    beq $t4, $s0, check_next_spot
    beq $t4, $s1, check_next_spot
    lw $t5, 0($t4)
    beq $t5, $zero, check_next_spot

    # Check if Masked Value is equal to start position_empty
    li $t4, 0xFFFF00
    move $t8, $t2
    lw $t5, 0($t8)
    and $t5, $t5, $t4

    add $t8, $t8, $t6
    lw $t7, 0($t8)
    and $t7, $t7, $t4
    bne $t5, $t7, check_next_spot
  
    add $t8, $t8, $t6
    lw $t7, 0($t8)
    and $t7, $t7, $t4
    bne $t5, $t7, check_next_spot
  
    add $t8, $t8, $t6
    lw $t7, 0($t8)
    and $t7, $t7, $t4
    bne $t5, $t7, check_next_spot
  
    # All Are Equal So Mark Them
    lw $t5, 0($t8)
    or $t5, $t5, 0x0000FF
    mult $t7, $t6, -1
    sw $t5, 0($t8)
    
    add $t8, $t8, $t7
    lw $t5, 0($t8)
    or $t5, $t5, 0x0000FF
    sw $t5, 0($t8)

    add $t8, $t8, $t7
    lw $t5, 0($t8)
    or $t5, $t5, 0x0000FF
    sw $t5, 0($t8)

    add $t8, $t8, $t7
    lw $t5, 0($t8)
    or $t5, $t5, 0x0000FF
    sw $t5, 0($t8)


check_next_spot:
  # Check Next Spot
  addi $t1, $t1, 1
  j mark_loop
  

return_matches:
  jr $ra


### $t0: Row 
### $t1: Column
### $t3: Bottle Address
destroy_matches:

  move $t0, $zero # Row
  move $t1, $zero # Column
  
  # Block Address
  lw $t3, ADDR_DSPL
  addi $t3, $t3, 16 # 4th Column
  lw $t4, NUM_COLS
  mult $t2, $t4, 15
  sll $t2, $t2, 2

  add $t3, $t3, $t2 # Address of Bottle

destroy_loop:

  li $t2, 19
  bne $t1, $t2, destroy_row_limit
  # Go to Next Row
  move $t1, $zero
  addi $t0, $t0, 1
  
destroy_row_limit:
  
  li $t2, 30
  beq $t0, $t2, return_destroy_matches

  # Current Address
  move $t2, $t3
  sll $t5, $t1, 2 # Column * 4
  add $t2, $t2, $t5 
  
  lw $t4, NUM_COLS
  mult $t4, $t4, $t0
  sll $t4, $t4, 2   # Row * NUM_COLS * 4

  add $t2, $t2, $t4 # Address of Current Spot
  
  # Check Masked Blue Value
  move $t4, $t2
  li $t5, 0x0000FF
  lw $t6, 0($t4)
  and $t6, $t6, $t5

  bne $t6, $t5, destroy_next_spot

  ### Delete Block

  # Check Rotation Data to Free
  li $t5, 0xFF000000
  lw $t6, 0($t4)
  and $t6, $t6, $t5

  # Left Capsule
  li $t8, 0x01000000
  beq $t6, $t8, free_right_capsule
  # Right Capsule
  li $t8, 0x02000000
  beq $t6, $t8, free_left_capsule

destroy_block:
  sw $zero, 0($t4) # Destroy Block

  j destroy_next_spot

free_right_capsule:
  lw $t7, 4($t4)
  li $t8, 0x00FFFFFF
  and $t7, $t7, $t8 # = 0x00XXXXXX
  sw $t7, 4($t4)
  j destroy_block
free_left_capsule:
  lw $t7, -4($t4)
  li $t8, 0x00FFFFFF
  and $t7, $t7, $t8 # = 0x00XXXXXX
  sw $t7, -4($t4)
  j destroy_block
  
destroy_next_spot:
  # Check Next Spot
  addi $t1, $t1, 1
  j destroy_loop

return_destroy_matches:
  jr $ra


### $t0: Row 
### $t1: Column
### $t3: Bottle Address
move_dangling:

  li $t0, 29 # Row
  li $t1, 18 # Column
  
  # Block Address
  lw $t3, ADDR_DSPL
  addi $t3, $t3, 16 # 4th Column
  lw $t4, NUM_COLS
  mult $t2, $t4, 15
  sll $t2, $t2, 2

  add $t3, $t3, $t2 # Address of Bottle

move_dangling_loop:

  li $t2, -1
  bne $t1, $t2, move_dangling_row_limit
  # Go to Next Row
  li $t1, 18
  addi $t0, $t0, -1
  
move_dangling_row_limit:
  
  li $t2, -1
  beq $t0, $t2, return_move_dangling

  # Current Address
  move $t2, $t3
  sll $t5, $t1, 2 # Column * 4
  add $t2, $t2, $t5 
  
  lw $t4, NUM_COLS
  mult $t4, $t4, $t0
  sll $t4, $t4, 2   # Row * NUM_COLS * 4

  add $t2, $t2, $t4 # Address of Current Spot

  # Ignore no Block
    lw $t4, 0($t2)
    beq $t4, $zero, move_dangling_next_spot
  # Ignore Falling Capsule
    beq $t2, $s0, move_dangling_next_spot
    beq $t2, $s1, move_dangling_next_spot
  # Ignore if Supported Below
    lw $t5, NUM_COLS
    sll $t5, $t5, 2
    add $t6, $t2, $t5
    lw $t5, 0($t6)
    bne $t5, $zero, move_dangling_next_spot  # Block is Supported Below 
  # If Right Pill, Check Below Left Pill aswell; If Both Unsupported, Move Both Down Together
  li $t5, 0xFF000000
  and $t5, $t5, $t4
  # If Left Pill, Skip
  li $t8, 0x01000000
  beq $t5, $t8, move_dangling_next_spot  # Skip Left Half Pills
  li $t8, 0x02000000
  bne $t5, $t8, fall_block
  # Check if Left Half Has support
  lw $t5, -4($t6)
  bne $t5, $zero, move_dangling_next_spot  # Left Half is Supported Below 
  lw $t5, -4($t2)
  sw $zero, -4($t2)
  sw $t5, -4($t6)
  
  
fall_block:
  lw $t5, 0($t2)
  sw $zero, 0($t2)
  sw $t5, 0($t6)

  j move_dangling_next_spot

move_dangling_next_spot:
  # Check Next Spot
  addi $t1, $t1, -1
  j move_dangling_loop

return_move_dangling:
  jr $ra
  
respond_to_Q:
	li $v0, 10                      # Quit gracefully
	syscall

### s0: Capsule 1 Address
### s1: Capsule 2 Address
### s2: Rotation State
respond_to_W:
    
    li $v0, 31 # midi syscall
    li $a0, 64  # E4 note
    li $a1, 500 # 500 ms
    li $a2, 0 # piano
    li $a3, 100 # volume 100
    syscall

    beq $zero, $s2, rotate_0
    j rotate_1
    
rotate_0:
  # Check Collision
  lw $t0, 4($s0)
  lw $t1, BLACK
  bne $t0, $t1, keyboard_input_A # return if not empty spot
  
  # Rotate
  lw $t0, 0($s1)
  sw $t0, 4($s0)
  lw $t0, BLACK
  sw $t0, 0($s1)
  addi $s1, $s0, 4
  addi $s2, $s2, 1

  #return
  j keyboard_input_A

rotate_1:
  # Check Collision
  lw $t3, NUM_COLS
  addi $t2, $zero, 4
  mult $t3, $t2, $t3
  add $t3, $s0, $t3 # Get Next row 
  lw $t0, 0($t3)
  lw $t1, BLACK
  bne $t0, $t1, keyboard_input_A # return if not empty spot
  
  # Rotate
  # Rotate Left Pixel
  lw $t0, 0($s0)
  sw $t0, 0($t3) 

  # Rotate Right Pixel
  lw $t0, 0($s1)
  sw $t0, 0($s0)

  # Remove Old Right Pixel
  lw $t0, BLACK
  sw $t0, 4($s0)

  # Change s1 to point to New Bottom Pixel
  add $s1, $t3, $zero

  # Change Rotational State
  addi $s2, $s2, -1

  #return
  j keyboard_input_A
  
respond_to_A:
  # Check Collision
  lw $t0, -4($s0)
  lw $t1, BLACK
  bne $t0, $t1, keyboard_input_S # return if not empty spot
  beq $s2, $zero, check_left_collision_state0

move_left:
  lw $t4, BLACK
  # Move
  ## Move Top/Left
  lw $t0, 0($s0)
  sw $t0, -4($s0)
  addi $s0, $s0, -4
  ## Clear old
  sw $t4, 4($s0)
  
  ## Move Bottom/Right
  lw $t0, 0($s1)
  sw $t0, -4($s1)
  addi $s1, $s1, -4

  ## Clear Empty Spot
  sw $t4, 4($s1)

  #return
  j keyboard_input_S

check_left_collision_state0:
  # Check Collision
  lw $t0, -4($s1)
  lw $t1, BLACK
  bne $t0, $t1, keyboard_input_S # return if not empty spot
  j move_left

respond_to_D:
  # Check Collision
  lw $t0, 4($s1)
  lw $t1, BLACK
  bne $t0, $t1, keyboard_input_S # return if not empty spot
  beq $s2, $zero, check_right_collision_state0

move_right:
  lw $t4, BLACK
  # Move
  ## Move Bottom/Right
  lw $t0, 0($s1)
  sw $t0, 4($s1)
  addi $s1, $s1, 4
  ## Clear old
  sw $t4, -4($s1)
  
  ## Move Top/Left
  lw $t0, 0($s0)
  sw $t0, 4($s0)
  addi $s0, $s0, 4
  ## Clear Empty Spot
  sw $t4, -4($s0)

  #return
  j keyboard_input_S

check_right_collision_state0:
  # Check Collision
  lw $t0, 4($s0)
  lw $t1, BLACK
  bne $t0, $t1, keyboard_input_S # return if not empty spot
  j move_right

respond_to_S:
  # Check Collision
  lw $t3, NUM_COLS
  addi $t2, $zero, 4
  mult $t3, $t2, $t3
  add $t4, $s1, $t3 # Get Next row 
  lw $t0, 0($t4)
  lw $t1, BLACK
  bne $t0, $t1, not_empty_below # return if not empty spot
  bne $s2, $zero, check_down_collision_state1

move_down:
  lw $t5, BLACK
  # Moveadd
  ## Move Bottom/Right
  lw $t0, 0($s1)
  add $t4, $s1, $t3
  sw $t0, 0($t4)
  sw $t5, 0($s1)   # Clear Old Spot
  move $s1, $t4
  
  ## Move Top/Left
  lw $t0, 0($s0)
  add $t4, $s0, $t3
  sw $t0, 0($t4)
  sw $t5, 0($s0)   # Clear Old Spot
  move $s0, $t4

  #return
  j check_matches

add_gravity:
  # Check Collision
  lw $t3, NUM_COLS
  addi $t2, $zero, 4
  mult $t3, $t2, $t3
  add $t4, $s1, $t3 # Get Next row 
  lw $t0, 0($t4)
  lw $t1, BLACK
  bne $t0, $t1, not_empty_below # return if not empty spot
  bne $s2, $zero, check_down_collision_state1

gravitate_down:
  lw $t5, BLACK
  # Moveadd
  ## Move Bottom/Right
  lw $t0, 0($s1)
  add $t4, $s1, $t3
  sw $t0, 0($t4)
  sw $t5, 0($s1)   # Clear Old Spot
  move $s1, $t4
  
  
  ## Move Top/Left
  lw $t0, 0($s0)
  add $t4, $s0, $t3
  sw $t0, 0($t4)
  sw $t5, 0($s0)   # Clear Old Spot
  move $s0, $t4

  #return
  jr $ra

check_down_collision_state1:
  # Check Collision
  lw $t0, -4($t4)
  lw $t1, BLACK
  bne $t0, $t1, not_empty_below # return if not empty spot
  j gravitate_down

not_empty_below:
  addi $s3, $zero, 1 # Blocked State

  # Add Rotation Information
  beq $s2 , 1, add_partner_info

play_landing_sound:
  li $v0, 31 # midi syscall
  li $a0, 55 # G3
  li $a1, 300 # 300 ms
  li $a2, 0 # piano
  li $a3, 100 # vol 100
  syscall

  jal new_capsule_draw
  j check_matches

add_partner_info:
  lw $t0, 0($s0)
  li $t8, 0x01000000
  add $t0, $t0, $t8  ## 1 in most Sig Byte Represents Partner on Right
  sw $t0, 0($s0)
  lw $t0, 0($s1)
  li $t8, 0x02000000
  add $t0, $t0, $t8  ## 2 in most Sig Byte Represents Partner on Left
  sw $t0, 0($s1)
  j play_landing_sound

END_PROGRAM:

  # sound effect
  li $v0, 31 # midi syscall
  li $a0, 45  # A2
  li $a1, 1000 # 1 second
  li $a2, 0 # piano
  li $a3, 120 # volume 120
  syscall

  # end program gracefully
  li   $v0, 10  # syscall 10 = exit
  syscall

  
# place_virus:
#   Chooses a random position within the lower half of the bottle and places a virus.
#   The random row is chosen from 30 to 44 (inclusive) and the column from 4 to 22.
#   It checks that the chosen cell is empty (BLACK) before placing the virus.
#   Virus color is passed in $a0.
place_virus:
    move $t2, $a0        # save the virus color in $t2
    move $t8, $ra

place_virus_loop:

    # generate random row in [30, 44]:
    li   $v0, 42         # syscall for random int
    li   $a0, 0          # lower bound 0
    li   $a1, 15         # 44-30+1 = 15 possible values
    syscall              # random value in $a0 
    addi $t0, $a0, 30    # $t0 = random row between 30 and 44

    # generate random column in [4, 22]:
    li   $v0, 42
    li   $a0, 0
    li   $a1, 19         # 22-4+1 = 19 possible values
    syscall              # random value in $a0
    addi $t1, $a0, 4     # $t1 = random column between 4 and 22

    # place the virus at the empty cell:
    move $a0, $t0        # row
    move $a1, $t1        # col
    move $a2, $t2        # virus color
    jal  colorUnit

    jr   $t8            # return from place_virus
