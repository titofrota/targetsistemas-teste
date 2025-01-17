# 4) Dado o valor de faturamento mensal de uma distribuidora, detalhado por estado:
# • SP – R$67.836,43
# • RJ – R$36.678,66
# • MG – R$29.229,88
# • ES – R$27.165,48
# • Outros – R$19.849,53

# Escreva um programa na linguagem que desejar onde calcule o percentual de representação que cada estado teve dentro do valor total mensal da distribuidora.  

revenues = {
  'SP' => 67_836.43,
  'RJ' => 36_678.66,
  'MG' => 29_229.88,
  'ES' => 27_165.48,
  'Outros' => 19_849.53
}

total_revenue = revenues.values.sum

puts "Percentual por estado:"
revenues.each do |state, revenue|
  puts "#{state}: #{(revenue / total_revenue) * 100}%"
end