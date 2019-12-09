class String

  def leetspeak
    char_chops = []
    char_chops = self.chars
    char_chops.each_with_index do |char_chop, i|
      if (char_chop === "e") |  (char_chop === "E")
        char_chops[i] = "3"
      elsif (char_chop === "o")
        char_chops[i] = "0"
      elsif (char_chop === "I")
        char_chops[i] = "1"
      elsif (char_chop === "s") & (i != 0) & (char_chops[(i - 1)] != " ")
        char_chops[i] = "z"
      elsif (char_chop === ".")
        char_chops[i] = ""
      end
    end
    return char_chops.join()
  end
end


# class String
#
#   def leetspeak
#     char_chop = []
#     char_chop = self.chars
#     loop_number = char_chop.length()
#     counter = 0
#     loop_number.times() do
#       if (char_chop[counter] === "e") |  (char_chop[counter] === "E")
#         char_chop[counter] = "3"
#       elsif (char_chop[counter] === "o")
#         char_chop[counter] = "0"
#       elsif (char_chop[counter] === "I")
#         char_chop[counter] = "1"
#       elsif (char_chop[counter] === "s") & (counter != 0) & (char_chop[(counter - 1)] != " ")
#         char_chop[counter] = "z"
#       elsif (char_chop[counter] === ".")
#         char_chop[counter] = ""
#       end
#       counter += 1
#     end
#     return char_chop.join()
#   end
# end
