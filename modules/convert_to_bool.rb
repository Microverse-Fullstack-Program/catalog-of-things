module ConvertToBool
  def convert_to_bool(str)
    if %w[y Y].include?(str)
      true

    elsif %w[n N].include?(str)
      false

    else
      puts 'Invalid input, enter Y or N:'
      str = gets.chomp
      convert_to_bool(str)

    end
  end
end
