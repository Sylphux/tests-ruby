def who_is_bigger(n1,n2,n3) #detect larger number or warns if containing nil
    hs = {a: n1, b: n2, c:n3}
    hs.value?(nil) ? "nil detected" : hs.max_by{|k,v| v}[0].to_s + " is bigger"
end

def reverse_upcase_noLTA(s) #reverses, upcases and deletes L T and As from string
    s.reverse.upcase.tr("LTA","")
end

def array_42(arr) #finds if there is a 42 in the arr and returns boolean
    arr.include? 42
end

def magic_array(a) #applies to array : flattening, sort, multiply all numbers by 2, remove multiples of 3, remove duplicates, sort, il less 55 characters !
    a.flatten.map{|x|x*2}.delete_if{|x|x%3==0}.uniq.sort
end