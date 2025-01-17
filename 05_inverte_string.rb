# 5) Escreva um programa que inverta os caracteres de um string.

# IMPORTANTE:
# a) Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;
# b) Evite usar funções prontas, como, por exemplo, reverse;

def reverse_string(str)
  reversed_str = ''

  # Adiciona cada caractere no início da string
  str.each_char do |char|
    reversed_str = char + reversed_str
  end

  reversed_str
end

puts "Digite uma string para inverter:"
input = gets.chomp

puts "String invertida: #{reverse_string(input)}"
