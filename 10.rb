loop{
  n=gets.to_i
  break if n==0

  mat=Array.new
  n.times{
    arr=gets.split.map(&:to_i)
    arr.push(arr.inject(:+))
    mat.push arr
  }

   colsum=mat.transpose.map{|r|
      r.inject(:+)
   }
   mat.push(colsum)
   
  mat.each do |x|
    x.each do |y|
      print "%5d" % y
    end
    puts
  end
}
