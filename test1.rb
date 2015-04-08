
def c_encrypt(phrase, key)
  ciphertext = ""

  phrase.chars.map do |asc|  #each_Codepoint is like each_car but gives ord of each char
    ciphertext << case asc
      when 'a'.ord..'z'.ord
          'a'.ord + (asc.ord - 'a'.ord + key) % 26
        when 'A'.ord..'Z'.ord
          'A'.ord + (asc.ord - 'A'.ord + key) % 26
        else
          (asc.ord + key)
      end
  end
  return ciphertext
end

def c_decrypt(phrase, key)
  ciphertext = ""

  phrase.chars.map do |asc|  #each_Codepoint is like each_car but gives ord of each char
    ciphertext << case asc
    when 'a'.ord..'z'.ord
        'a'.ord + (asc.ord - 'a'.ord - key) % 26
      when 'A'.ord..'Z'.ord
        'A'.ord + (asc.ord - 'A'.ord - key) % 26
      else
        (asc.ord - key).chr
    end
  end
  return ciphertext
end

ciph = c_encrypt("some Text, -11", 3)
puts "Encrypted",ciph

decr = c_decrypt(ciph, 3)
puts "Descrypted",decr

'''
    def self.encrypt(document, key)
      # TODO: encrypt string using caeser cipher
      ciphertext = ""

      document.each_codepoint do |asc|  #each_Codepoint is like each_car but gives ord of each char
        ciphertext << case asc
        when "a".ord.."z".ord
            "a".ord + (asc - "a".ord + key) % 26
          when "A".ord.."Z".ord
            "A".ord + (asc - "A".ord + key) % 26
          else
            (asc + key)
        end
      end
      return ciphertext
    end'''
