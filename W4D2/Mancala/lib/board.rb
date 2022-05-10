require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new()}
    place_stones
    @player1 = name1
    @player2 = name2
    @current_player = @player1

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    i = 0
    while i < 13
      unless i == 6
        @cups[i] << :stone
        @cups[i] << :stone
        @cups[i] << :stone
        @cups[i] << :stone
      end
      i += 1
    
    end
    
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 12 || start_pos < 0
    raise "Starting cup is empty" if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)

    in_hand = []
    @cups[start_pos], in_hand = in_hand, @cups[start_pos]
    if start_pos != 12
      i = start_pos + 1
    else
      i = 0
    end
    while in_hand.length > 0 
      # debugger   
      if current_player_name == @player1
        @cups[i] << in_hand.shift unless i == 13
      else
        @cups[i] << in_hand.shift unless i == 6 
      end
      if i < 12
        i += 1
      else
        i = 0
      end
      render
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
