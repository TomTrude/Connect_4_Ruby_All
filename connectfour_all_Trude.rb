############################################################
#
#  Name:        Tom Trude
#  Assignment:  ConnectFour All
#  Date:        3/15/18
#  Class:       CIS 282
#  Description: create a Connect Four Game All
#
############################################################

def clear_screen
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
  puts
end

def win_screen(input, my_gameboard)
  print " won in column #{input + 1}!\n"
  puts
  print_grid(my_gameboard)
  puts ">>>Game Over<<<"
  puts
  print "Play again? If yes, "
end

def menu
  menu = ""
  menu += "\n"
  menu += "1. Play New PVC Game\n"
  menu += "2. Play New PVP Game\n"
  menu += "3. Play New CVC Game\n"
  menu += "4. Quit"
  puts menu

end

def print_grid (grid)
  puts "1 2 3 4 5 6 7 8"
  row = 0
  while row < grid.length # 3
    col = 0
    while col < grid[row].length #row length  #width
      print grid[row][col] #value of the column
      col += 1
    end
    puts

    row += 1
  end
  puts
end

def pvc
# X win check
  def horizontal_win_check_1 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 0
    until row_check_counter == my_gameboard.length || game_win == true
      row = row_check_counter
      col = 0
      until col == my_gameboard[row].length || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Horizontal win! User"
            return game_win
          end
        else
          variable_to_count = 0
        end
        col += 1
      end
      row_check_counter += 1
    end
  end

  def vertical_win_check_1 (my_gameboard, game_win) #todo for computer input
    variable_to_count = 0
    col_check_counter = 0
    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Vertical win! User"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
      end
      if row == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

  def se_diagonal_win_check1_1 (my_gameboard, game_win) #from [7,0] - [0,0]
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def se_diagonal_win_check2_1 (my_gameboard, game_win) #from [0,7] - [0,0]
    variable_to_count = 0
    col_check_counter = 7

    until col_check_counter == -1 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter -= 1
    end
  end

  def sw_diagonal_win_check1_1 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 7
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def sw_diagonal_win_check2_1 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0

    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == -1 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

# 0 win check
  def horizontal_win_check_0 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 0
    until row_check_counter == my_gameboard.length || game_win == true
      row = row_check_counter
      col = 0
      until col == my_gameboard[row].length || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Horizontal win! Computer"
            return game_win
          end
        else
          variable_to_count = 0
        end
        col += 1
      end
      row_check_counter += 1
    end
  end

  def vertical_win_check_0 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0
    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Vertical win! Computer"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
      end
      if row == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

  def se_diagonal_win_check1_0 (my_gameboard, game_win) #from [7,0] - [0,0]
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def se_diagonal_win_check2_0 (my_gameboard, game_win) #from [0,7] - [0,0]
    variable_to_count = 0
    col_check_counter = 7

    until col_check_counter == -1 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter -= 1
    end
  end

  def sw_diagonal_win_check1_0 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 7
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def sw_diagonal_win_check2_0 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0

    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == -1 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

end

def pvp

# X win check
  def horizontal_win_check_1 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 0
    until row_check_counter == my_gameboard.length || game_win == true
      row = row_check_counter
      col = 0
      until col == my_gameboard[row].length || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Horizontal win! User 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        col += 1
      end
      row_check_counter += 1
    end
  end

  def vertical_win_check_1 (my_gameboard, game_win) #todo for computer input
    variable_to_count = 0
    col_check_counter = 0
    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Vertical win! User 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
      end
      if row == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

  def se_diagonal_win_check1_1 (my_gameboard, game_win) #from [7,0] - [0,0]
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def se_diagonal_win_check2_1 (my_gameboard, game_win) #from [0,7] - [0,0]
    variable_to_count = 0
    col_check_counter = 7

    until col_check_counter == -1 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter -= 1
    end
  end

  def sw_diagonal_win_check1_1 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 7
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def sw_diagonal_win_check2_1 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0

    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == -1 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

# 0 win check
  def horizontal_win_check_0 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 0
    until row_check_counter == my_gameboard.length || game_win == true
      row = row_check_counter
      col = 0
      until col == my_gameboard[row].length || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Horizontal win! User 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        col += 1
      end
      row_check_counter += 1
    end
  end

  def vertical_win_check_0 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0
    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Vertical win! User 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
      end
      if row == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

  def se_diagonal_win_check1_0 (my_gameboard, game_win) #from [7,0] - [0,0]
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def se_diagonal_win_check2_0 (my_gameboard, game_win) #from [0,7] - [0,0]
    variable_to_count = 0
    col_check_counter = 7

    until col_check_counter == -1 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter -= 1
    end
  end

  def sw_diagonal_win_check1_0 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 7
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def sw_diagonal_win_check2_0 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0

    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == -1 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! User 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

end

def cvc

  # X win check
  def horizontal_win_check_1 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 0
    until row_check_counter == my_gameboard.length || game_win == true
      row = row_check_counter
      col = 0
      until col == my_gameboard[row].length || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Horizontal win! Computer 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        col += 1
      end
      row_check_counter += 1
    end
  end

  def vertical_win_check_1 (my_gameboard, game_win) #todo for computer input
    variable_to_count = 0
    col_check_counter = 0
    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Vertical win! Computer 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
      end
      if row == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

  def se_diagonal_win_check1_1 (my_gameboard, game_win) #from [7,0] - [0,0]
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def se_diagonal_win_check2_1 (my_gameboard, game_win) #from [0,7] - [0,0]
    variable_to_count = 0
    col_check_counter = 7

    until col_check_counter == -1 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter -= 1
    end
  end

  def sw_diagonal_win_check1_1 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 7
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def sw_diagonal_win_check2_1 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0

    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == -1 || game_win == true
        if my_gameboard[row][col] == 'X '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 1"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

# 0 win check
  def horizontal_win_check_0 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 0
    until row_check_counter == my_gameboard.length || game_win == true
      row = row_check_counter
      col = 0
      until col == my_gameboard[row].length || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Horizontal win! Computer 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        col += 1
      end
      row_check_counter += 1
    end
  end

  def vertical_win_check_0 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0
    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        #search for 'X '
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Vertical win! Computer 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
      end
      if row == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

  def se_diagonal_win_check1_0 (my_gameboard, game_win) #from [7,0] - [0,0]
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def se_diagonal_win_check2_0 (my_gameboard, game_win) #from [0,7] - [0,0]
    variable_to_count = 0
    col_check_counter = 7

    until col_check_counter == -1 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col += 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter -= 1
    end
  end

  def sw_diagonal_win_check1_0 (my_gameboard, game_win)
    variable_to_count = 0
    row_check_counter = 7

    until row_check_counter == -1 || game_win == true
      row = row_check_counter
      col = 7
      until row == 8 || col == 8 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if row == 8
        variable_to_count = 0
      end
      row_check_counter -= 1
    end
  end

  def sw_diagonal_win_check2_0 (my_gameboard, game_win)
    variable_to_count = 0
    col_check_counter = 0

    until col_check_counter == 8 || game_win == true
      col = col_check_counter
      row = 0
      until row == 8 || col == -1 || game_win == true
        if my_gameboard[row][col] == '0 '
          variable_to_count += 1
          if variable_to_count == 4
            game_win = true
            print "Diagonal win! Computer 2"
            return game_win
          end
        else
          variable_to_count = 0
        end
        row += 1
        col -= 1
      end
      if col == 8
        variable_to_count = 0
      end
      col_check_counter += 1
    end
  end

end


my_gameboard = [[". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "]
]
puts "Would you like to play Connect 4?"
print "To start press enter:"
gets
puts
puts "(For best experience, resize screen to show at least 20 lines)"
puts

menu_selection = ''
until menu_selection == '4' do
  puts "Select which game you would like to play:"
  menu
  menu_selection = gets.chomp
  puts

  game_win = false
  while menu_selection == '1' && game_win == false
    pvc #initialize methods

    #user
    if !game_win
    puts "User: (X)"
    puts "Computer: (0)"
    puts
    puts ">>>4CONNECT4<<<"
    puts
    print_grid (my_gameboard)
    puts "User's turn, Select a column to place your piece (X): "
    user_input = gets.to_i - 1
    until user_input == 0 || user_input == 1 || user_input == 2 || user_input == 3 || user_input == 4 || user_input == 5 || user_input == 6 || user_input == 7
      puts "Invalid input"
      user_input = gets.to_i - 1
    end
    clear_screen
    end

    row = 7
    while my_gameboard[0][user_input].include?('X ') || my_gameboard[0][user_input].include?('0 ')
      puts " please select another column"
      user_input = gets.to_i - 1
    end
    while my_gameboard[row][user_input].include?('X ') || my_gameboard[row][user_input].include?('0 ')
      row -= 1
    end
    my_gameboard[row][user_input] = 'X '

    #check for horizontal win
    if horizontal_win_check_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end
    #check for vertical win
    if vertical_win_check_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SE diagonal 1
    if se_diagonal_win_check1_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SE diagonal 2
    if se_diagonal_win_check2_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SW diagonal 1
    if sw_diagonal_win_check1_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SW diagonal 2
    if sw_diagonal_win_check2_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    if !game_win
      puts
      puts "User chose column #{user_input + 1}:"
      puts
      print_grid(my_gameboard)
      puts
      puts "Press enter to continue:"
      pause = gets
      clear_screen
    end


    # computer
    if !game_win
    puts "User: (X)"
    puts "Computer: (0)"
    puts
    puts ">>>4CONNECT4<<<"
    puts
    print_grid (my_gameboard)
    puts "Computer 1's turn, press enter to continue"
    pause = gets
    clear_screen
    end

    comp_input = rand(0..7)
    row = 7
    while my_gameboard[0][comp_input].include?('0 ') || my_gameboard[0][comp_input].include?('X ')
      comp_input = rand(0..7)
    end
    while my_gameboard[row][comp_input].include?('0 ') || my_gameboard[row][comp_input].include?('X ')
      row -= 1
    end
    my_gameboard[row][comp_input] = '0 '

    #check for horizontal win
    if horizontal_win_check_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end
    #check for vertical win
    if vertical_win_check_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SE diagonal 1
    if se_diagonal_win_check1_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SE diagonal 2
    if se_diagonal_win_check2_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SW diagonal 1
    if sw_diagonal_win_check1_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SW diagonal 2
    if sw_diagonal_win_check2_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    if !game_win
      puts
      puts "Computer chose column #{comp_input + 1}:"
      puts
      print_grid(my_gameboard)
      puts
      puts "Press enter to continue:"
      pause = gets
      clear_screen
    end

  end

  while menu_selection == '2' && game_win == false
    pvp #initialize methods

    #user 1
    if !game_win
    puts "User 1: (X)"
    puts "User 2: (0)"
    puts
    puts ">>>4CONNECT4<<<"
    puts
    print_grid (my_gameboard)
    puts "User 1's turn, Select a column to place your piece (X): "
    user_input = gets.to_i - 1
    until user_input == 0 || user_input == 1 || user_input == 2 || user_input == 3 || user_input == 4 || user_input == 5 || user_input == 6 || user_input == 7
      puts "Invalid input"
      user_input = gets.to_i - 1
    end
    clear_screen
    end

    row = 7
    while my_gameboard[0][user_input].include?('X ') || my_gameboard[0][user_input].include?('0 ')
      puts " please select another column"
      user_input = gets.to_i - 1
    end
    while my_gameboard[row][user_input].include?('X ') || my_gameboard[row][user_input].include?('0 ')
      row -= 1
    end
    my_gameboard[row][user_input] = 'X '

    #check for horizontal win
    if horizontal_win_check_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end
    #check for vertical win
    if vertical_win_check_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SE diagonal 1
    if se_diagonal_win_check1_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SE diagonal 2
    if se_diagonal_win_check2_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SW diagonal 1
    if sw_diagonal_win_check1_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    #check for SW diagonal 2
    if sw_diagonal_win_check2_1(my_gameboard, game_win)
      game_win = true
      win_screen(user_input, my_gameboard)
    end

    if !game_win
      puts
      puts "User 1 chose column #{user_input + 1}:"
      puts
      print_grid(my_gameboard)
      puts
      puts "Press enter to continue:"
      pause = gets
      clear_screen
    end


    #user 2
    if !game_win
    puts "User 1: (X)"
    puts "User 2: (0)"
    puts
    puts ">>>4CONNECT4<<<"
    puts
    print_grid(my_gameboard)
    puts "User 2's turn, Select a column to place your piece (0): "
    user2_input = gets.to_i - 1
    until user2_input == 0 || user2_input == 1 || user2_input == 2 || user2_input == 3 || user2_input == 4 || user2_input == 5 || user2_input == 6 || user2_input == 7
      puts "Invalid input"
      user2_input = gets.to_i - 1
    end
    clear_screen
    end

    row = 7
    while my_gameboard[0][user2_input].include?('X ') || my_gameboard[0][user2_input].include?('0 ')
      puts " please select another column"
      user2_input = gets.to_i - 1
    end
    while my_gameboard[row][user2_input].include?('X ') || my_gameboard[row][user2_input].include?('0 ')
      row -= 1
    end
    my_gameboard[row][user2_input] = '0 '

    #check for horizontal win
    if horizontal_win_check_0(my_gameboard, game_win)
      game_win = true
      win_screen(user2_input, my_gameboard)
    end
    #check for vertical win
    if vertical_win_check_0(my_gameboard, game_win)
      game_win = true
      win_screen(user2_input, my_gameboard)
    end

    #check for SE diagonal 1
    if se_diagonal_win_check1_0(my_gameboard, game_win)
      game_win = true
      win_screen(user2_input, my_gameboard)
    end

    #check for SE diagonal 2
    if se_diagonal_win_check2_0(my_gameboard, game_win)
      game_win = true
      win_screen(user2_input, my_gameboard)
    end

    #check for SW diagonal 1
    if sw_diagonal_win_check1_0(my_gameboard, game_win)
      game_win = true
      win_screen(user2_input, my_gameboard)
    end

    #check for SW diagonal 2
    if sw_diagonal_win_check2_0(my_gameboard, game_win)
      game_win = true
      win_screen(user2_input, my_gameboard)
    end

    if !game_win
      puts
      puts "User 2 chose column #{user2_input + 1}:"
      puts
      print_grid(my_gameboard)
      puts
      puts "Press enter to continue:"
      pause = gets
      clear_screen
    end

  end

  while menu_selection == '3' && game_win == false
    cvc #initialize methods

    # computer 1
    if !game_win
    puts "Computer 1: (X)"
    puts "Computer 2: (0)"
    puts
    puts">>>4CONNECT4<<<"
    puts
    print_grid (my_gameboard)
    puts "Computer 1's turn, press enter to continue"
    pause = gets
    clear_screen
    end

    comp_input = rand(0..7)
    row = 7
    while my_gameboard[0][comp_input].include?('0 ') || my_gameboard[0][comp_input].include?('X ')
      comp_input = rand(0..7)
    end
    while my_gameboard[row][comp_input].include?('0 ') || my_gameboard[row][comp_input].include?('X ')
      row -= 1
    end
    my_gameboard[row][comp_input] = 'X '

    #check for horizontal win
    if horizontal_win_check_1(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end
    #check for vertical win
    if vertical_win_check_1(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SE diagonal 1
    if se_diagonal_win_check1_1(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SE diagonal 2
    if se_diagonal_win_check2_1(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SW diagonal 1
    if sw_diagonal_win_check1_1(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    #check for SW diagonal 2
    if sw_diagonal_win_check2_1(my_gameboard, game_win)
      game_win = true
      win_screen(comp_input, my_gameboard)
    end

    if !game_win
      puts
      puts "Computer 1 chose column #{comp_input + 1}:"
      puts
      print_grid(my_gameboard)
      puts
      puts "Press enter to continue:"
      pause = gets
      clear_screen
    end


    # computer 2
    if !game_win
    puts "Computer 1: (X)"
    puts "Computer 2: (0)"
    puts
    puts">>>4CONNECT4<<<"
    puts
    print_grid (my_gameboard)
    puts "Computer 2's turn, press enter to continue:"
    pause = gets
    clear_screen
    end

    comp2_input = rand(0..7)
    row = 7
    while my_gameboard[0][comp2_input].include?('0 ') || my_gameboard[0][comp2_input].include?('X ')
      comp2_input = rand(0..7)
    end
    while my_gameboard[row][comp2_input].include?('0 ') || my_gameboard[row][comp2_input].include?('X ')
      row -= 1
    end
    my_gameboard[row][comp2_input] = '0 '

    #check for horizontal win
    if horizontal_win_check_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp2_input, my_gameboard)
    end
    #check for vertical win
    if vertical_win_check_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp2_input, my_gameboard)
    end

    #check for SE diagonal 1
    if se_diagonal_win_check1_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp2_input, my_gameboard)
    end

    #check for SE diagonal 2
    if se_diagonal_win_check2_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp2_input, my_gameboard)
    end

    #check for SW diagonal 1
    if sw_diagonal_win_check1_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp2_input, my_gameboard)
    end

    #check for SW diagonal 2
    if sw_diagonal_win_check2_0(my_gameboard, game_win)
      game_win = true
      win_screen(comp2_input, my_gameboard)
    end

    if !game_win
      puts
      puts "Computer 2 chose column #{comp2_input + 1}:"
      puts
      print_grid(my_gameboard)
      puts
      puts "Press enter to continue:"
      pause = gets
      clear_screen
    end

  end
  if menu_selection == '4'
    print "Goodbye!"
  end
  my_gameboard = [[". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "],
                  [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "]
  ]
end

