
module Bingo
  class Card

    attr_reader :grid

    def initialize
      wordlist  = load_values
      values    = wordlist['values']
      freespace = wordlist['freespace']

      @grid = Array.new

      5.times do |column|
        @grid[column] = Array.new
        5.times do |row|
          # on the center square, set a predefined value
          if row == 2 and column == 2
            @grid[column][row] = "#{freespace['value']}#{freespace['html']}"
          else
            @grid[column][row] = values.sample
            values.delete @grid[column][row]
          end
        end
      end
    end

    def load_values
      list = File.open(wordlist_path)
      YAML::load(list.read)
    end

    private
    def wordlist_path
      File.join(Bingo.root, 'config', 'wordlist.yml')
    end

  end
end

