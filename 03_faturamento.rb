# 3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora, faça um programa, na linguagem que desejar, que calcule e retorne:
# • O menor valor de faturamento ocorrido em um dia do mês;
# • O maior valor de faturamento ocorrido em um dia do mês;
# • Número de dias no mês em que o valor de faturamento diário foi superior à média mensal.

# IMPORTANTE:
# a) Usar o json ou xml disponível como fonte dos dados do faturamento mensal;
# b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média;

require 'json'

file = File.read('dados.json')
data = JSON.parse(file)

revenues = data.map { |day| day['valor'] }.reject { |value| value == 0 }

min_revenue = revenues.min
max_revenue = revenues.max

average_revenue = revenues.sum / revenues.length

days_above_average = revenues.count { |value| value > average_revenue }

puts "O menor valor de faturamento ocorrido em um dia do mês é #{min_revenue}."
puts "O maior valor de faturamento ocorrido em um dia do mês é #{max_revenue}."
puts "Número de dias no mês em que o valor de faturamento diário foi superior à média mensal é #{days_above_average}."
