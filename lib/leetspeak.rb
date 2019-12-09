class String

  def leetspeak
    char_chop = []
    char_chop = self.chars
    loop_number = char_chop.length()
    counter = 0
    loop_number.times() do
      if (char_chop[counter] === "e") |  (char_chop[counter] === "E")
        char_chop[counter] = "3"
      elsif (char_chop[counter] === "o")
        char_chop[counter] = "0"
      elsif (char_chop[counter] === "I")
        char_chop[counter] = "1"
      elsif (char_chop[counter] === "s") & (counter != 0) & (char_chop[(counter - 1)] != " ")
        char_chop[counter] = "z"
      elsif (char_chop[counter] === ".")
        char_chop[counter] = ""         
      end
      counter += 1
    end
    return char_chop.join()
  end
end
