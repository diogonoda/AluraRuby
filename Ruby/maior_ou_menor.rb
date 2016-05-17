# encoding: ISO-8859-1
def da_boas_vindas
  puts "Bem vindo ao jogo da adivinha��o"
  puts "Qual � o seu nome?"
  nome = gets

  puts "\n\n\n\n\n\n"
  puts "Come�aremos o jogo para voc�, " + nome
end

def sorteia_numero_secreto
  puts "Escolhendo um n�mero secreto entre 0 e 200..."
  sorteado = 175
  puts "Escolhido... Adivinhe o n�mero secreto!"

  sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
  puts "\n\n\n\n\n"
  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
  puts "Entre com um n�mero"
  chute = gets
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

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero tentativa, limite_de_tentativas

  if verifica_se_acertou chute, numero_secreto
    break
  end
end
