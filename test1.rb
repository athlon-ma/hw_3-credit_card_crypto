document = "4916603231464963 Mar-30-2020 Soumya Ray Visa"
fcipher = "2020 SouVisamya Ray 3146496349166032 Mar-30-"
scipher = "Su o0022aiVsa Ry yma93466134026369413--0rM a"
key = 3

'''
class Array
  def unshuffle(random:)
    transformed_order = (0...length).to_a.shuffle!(random: random)
    sort_by.with_index{|_, i| transformed_order[i]}
  end
end
'''

    doc_length=document.to_s.length
    # 1. find number of rows/cols such that matrix is almost square
    if  doc_length % Math.sqrt(doc_length) == 0
        doc_row = Math.sqrt(doc_length).to_i
        doc_column= doc_row
      else
        doc_row = Math.sqrt(doc_length).ceil
        doc_column= doc_row + 1
      end
 puts document
    # 2. break plaintext into evenly sized blocks
    doc=document.to_s.chars.each_slice(doc_column).to_a
    ## have seq of transpose
    seq=(0..doc_length-1).to_a.map{|element|element.to_s}
    seq=seq.each_slice(doc_column).to_a
    ##
    # 3. sort rows in predictibly random way using key as seed
    doc=doc.shuffle(random: Random.new(key) )
    seq=seq.shuffle(random: Random.new(key) )
    
    # 4. sort columns of each row in predictibly random way
    doc=doc.collect! {|ele| ele.shuffle(random: Random.new(key))}
    seq=seq.collect! {|ele| ele.shuffle(random: Random.new(key))}
    #puts doc.join, seq.join(" ")
    # 5. return joined cyphertext
  puts doc.join
