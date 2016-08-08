# encoding: ISO-8859-1
def da_boas_vindas
  puts "Bem vindo ao jogo da adivinha��o"
  puts "Qual � o seu nome?"
  nome = gets.strip

  puts "\n\n\n\n\n\n"
  puts "Come�aremos o jogo para voc�, #{nome}"
end

def sorteia_numero_secreto
  puts "Escolhendo um n�mero secreto entre 0 e 200..."
  sorteado = rand(200)
  puts "Escolhido... Adivinhe o n�mero secreto!"

  sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
  puts "\n\n\n\n\n"
  puts "Tentativa #{tentativa}  de #{limite_de_tentativas}"
  puts "N�meros testados at� agora #{chutes}"
  puts "Entre com um n�mero"
  chute = gets.strip

  puts "Ser� que acertou? Voc� chutou " + chute

  chute.to_i
end

def verifica_se_acertou(chute, numero_secreto)
  acertou = chute == numero_secreto

  if acertou
    puts "Acertou!"

    return true
  end

  maior = numero_secreto > chute

  if maior
    puts "O n�mero secreto � maior!"
  else
    puts "O n�mero secreto � menor!"
  end

  false
end



da_boas_vindas
numero_secreto = sorteia_numero_secreto

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero chutes, tentativa, limite_de_tentativas
  chutes << chute

  pontos_a_perder = (chute - numero_secreto).abs / 2.0
  pontos_ate_agora -= pontos_a_perder

  if verifica_se_acertou chute, numero_secreto
    break
  end
end

puts "Voc� ganhou #{pontos_ate_agora} pontos. O numero sercreto era #{numero_secreto}"
