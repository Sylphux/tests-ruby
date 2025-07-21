def echo(w)
    w
end

def shout(w)
    w.upcase
end

def repeat(w,*p)
    p.empty? ? w + " #{w}" : ((" #{w}")*p[0])[1..-1]
end

def start_of_word(w,lgt)
    w[0..(lgt-1)]
end

def first_word(s)
    s.split[0]
end

def titleize(s)
    bigtitle = s.split
    (1..bigtitle.length).each do |i|
        if bigtitle[i-1].length > 3
            bigtitle[i-1].capitalize!
        end
    end
    bigtitle[0].capitalize!
    bigtitle.join(" ")
end