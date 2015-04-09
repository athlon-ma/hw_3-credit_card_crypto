document = "4916603231464963 Mar-30-2020 Soumya Ray Visa"
key = 3

'''doc = document.to_s.chars.map(&:ord)
docLen = doc.length
sqrDoc = (Math.sqrt(docLen)).ceil

puts sqrDoc

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

    # 2. break plaintext into evenly sized blocks
    doc=document.to_s.chars.each_slice(doc_column).to_a
    # 3. sort rows in predictibly random way using key as seed
    doc=doc.shuffle(random: Random.new(key) )
    puts doc.join, "First"
    # 4. sort columns of each row in predictibly random way
    doc=doc.collect! {|ele| ele.shuffle(random: Random.new(key))}
    puts doc.join
    # 5. return joined cyphertext
  doc.join

