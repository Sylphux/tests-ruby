def dowords(wrd) #autre def pour traiter les mots individuellement
    wrd.gsub!("qu","xx")
    if wrd[0].match?(/[aAeEuUiIoOyY]/) #translates word beginning with a (and more possible) vowel
        wrd = wrd + "ay"

    elsif !wrd[0].match?(/[aAeEuUiIoOyY]/) && wrd[1].match?(/[aAeEuUiIoOyY]/) #translates word beginning with 1 consonnant
        wrd = wrd[1..]+wrd[0]+"ay"

    elsif !wrd[0].match?(/[aAeEuUiIoOyY]/) && !wrd[1].match?(/[aAeEuUiIoOyY]/) && wrd[2].match?(/[aAeEuUiIoOyY]/) #translates word beginning with 2 consonnant
        wrd = wrd[2..]+wrd[0..1]+"ay"

    elsif !wrd[0].match?(/[aAeEuUiIoOyY]/) && !wrd[1].match?(/[aAeEuUiIoOyY]/) && !wrd[2].match?(/[aAeEuUiIoOyY]/) #translates word beginning with 3 consonnant
        wrd = wrd[3..]+wrd[0..2]+"ay"
    end
    wrd.gsub!("xx","qu")
    return wrd
end

def translate(s)
    moment = s.split #tente de splitter la phrase, puis on vérifie si ça fait plus d'un mot
    if moment.length > 1
        moment.length.times do |i|
            moment[i-1] = dowords(moment[i-1])
        end
        return moment.join(" ") # ON JOIN LES MOTS TRADUITS ET RETURN
    else
        return dowords(s) # ON RETURN LE MOT UNIQUE
    end
end