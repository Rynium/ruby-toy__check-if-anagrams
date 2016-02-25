def inventory(string)
    empty = {}
    
    i = 0 
    while i < string.length
        if empty.has_key?(string[i].to_sym)
            empty[string[i].to_sym] += 1
        else 
            empty[string[i].to_sym] = 1
        end
    i += 1
    end
    empty
end

def anagrams?(str1, str2)
    outcome = false
    
    if inventory(str1) == inventory(str2)
         outcome = true
    end
    outcome
end

