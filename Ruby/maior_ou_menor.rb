# encoding: ISO-8859-1
puts "Bem vindo ao jogo da adivinha��o"
puts "Qual � o seu nome?"
nome = gets

puts "\n\n\n\n\n\n"
puts "Come�aremos o jogo para voc�, " + nome

puts "Escolhendo um n�mero secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... Adivinhe o n�mero secreto!"

puts "\n\n\n\n\n"
puts "Tentativa 1"
puts "Entre com um n�mero"
chute = gets
puts "Ser� que acertou? Voc� chutou " + chute

acertou = chute.to_i == numero_secreto

if acertou
  puts "Acertou!"
else
  maior = numero_secreto > chute.to_i

  if maior
    puts "O n�mero secreto � maior!"
  else
    puts "O n�mero secreto � menor!"
  end
end
