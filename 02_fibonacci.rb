# 2) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.

# IMPORTANTE: Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente definido no código;

def fibonacci?(n)
  return true if n == 0 || n == 1

  a = 0
  b = 1

  while b < n
    a = b
    b = a + b
  end

  b == n
end

n = nil
loop do
  print "Digite um número para verificar:"
  input = gets.chomp

  if input.match?(/^\d+$/)
    n = input.to_i
    break
  else
    puts "Entrada inválida, digite um número válido."
  end
end

if fibonacci?(n)
  puts "O número #{n} pertence à sequência de Fibonacci."
else
  puts "O número #{n} não pertence à sequência de Fibonacci."
end