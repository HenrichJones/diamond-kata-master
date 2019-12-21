class Diamond
  def build_diamond ltr
    diamond = ""
    letters = ('A'..ltr).to_a
    
    letters.each do |ltr|
      mount_diamond(diamond, letters, ltr)
    end
    letters.reverse.each_with_index do |ltr_r, index|
      next if index == 0
      mount_diamond(diamond, letters, ltr_r)
    end
    diamond
  end

  private

  def shape letters
    (letters.join.reverse).concat(letters.join.slice(1..letters.join.chars.count))
  end

  def mount_diamond diamond, letters, ltr
    diamond.concat(shape(letters).tr("^#{ltr}", '_')).concat("\n")
  end
end