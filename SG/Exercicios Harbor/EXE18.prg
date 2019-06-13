clear

nContador := 1
nLinha    := 12

while nContador <= 10
   @ nContador + 1, 01 say nContador
   nContador++
end

nContador -= 1
inkey(2)

while nContador >= 1
   @ nLinha + 1, 01 say nContador
   nContador--
   nLinha++
end

inkey(0)
