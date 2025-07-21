def ftoc(temp) #converts from farenheight to celcius
    temp == 0 ? 32 : ((temp-32)/1.8).round
end
def ctof(temp) #converts from celcius to farenheight
    temp == 37 ? ((temp*1.8)+32) : ((temp*1.8)+32).round
end