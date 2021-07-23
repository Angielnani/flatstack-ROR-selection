class String
  def row
    package = []
    self.each_char do |array| #строковый итератор
      if package.last && package.last.last == array 
        package.last << array
      else
        package << [array]
      end
    end
    package.map { |i| [i.size, i.last] }.join
  end
  end


puts res = '1'
6.times { puts res = res.row } #ещё один класный строковый итератор



