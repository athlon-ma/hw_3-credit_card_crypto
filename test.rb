document = "4916603231464963 Mar-30-2020 Soumya Ray Visa"
ciphertext = "Su o0022aiVsa Ry yma93466134026369413--0rM a"
key = 3

'''doc = document.to_s.chars.map(&:ord)
docLen = doc.length
sqrDoc = (Math.sqrt(docLen)).ceil

puts sqrDoc

'''
    cipher_length=ciphertext.to_s.length
 if  cipher_length % Math.sqrt(cipher_length) == 0
        cipher_row = Math.sqrt(cipher_length).to_i
        cipher_column= cipher_row
      else
        cipher_row = Math.sqrt(cipher_length).ceil
        cipher_column= cipher_row + 1
      end

      seq=(0..cipher_length-1).to_a.map{|element|element.to_s}
      seq=seq.each_slice(cipher_column).to_a
      seq=seq.shuffle(random: Random.new(key) )
      seq=seq.collect! {|ele| ele.shuffle(random: Random.new(key))}
      seq=seq.flatten.map{|index| index.to_i}

      doc=ciphertext.to_s.chars.to_a
      newt = []
      count = 0

      doc.each do
      	newt << doc[seq.index(count)]
#      	puts newt, seq.index(count)
      	count += 1
      end

      puts newt.join



#      together = doc.zip(seq)
      #puts together.join(" ")
 #     final = together.sort_by{|x,y| y}
      #finals = final.map {|x,y| x}

  #    puts final.join("")

      #sorted = doc.sort_by { |k| k["value"] }
      #cipher=ciphertext.to_s.chars.to_a
      #puts cipher.join

