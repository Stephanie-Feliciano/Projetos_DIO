puts "Iniciando calculadora ..."

loop do
  puts "--- Nova Operação ---"
  
  puts "Insira o num1: "
  num1 = gets.chomp.to_f

  puts "Insira o num2: "
  num2 = gets.chomp.to_f

  puts "Selecione a operação desejada: "
  puts "1- SOMA"
  puts "2- SUBTRAÇÃO"
  puts "3- MULTIPLICAÇÃO"
  puts "4- DIVISÃO"

  operacao = gets.chomp.to_i

  resultado_soma = num1 + num2
  resultado_subtracao = num1 - num2
  resultado_multiplicacao = num1 * num2
  
  # Tratamento para evitar erro ao dividir por zero
  if operacao == 4 && num2 == 0
    resultado_divisao = "Erro: Não é permitido divisão por zero!"
  else
    resultado_divisao = num1 / num2
  end

  case operacao
  when 1
      puts "Operação selecionada: SOMA"
      puts "#{resultado_soma}"
  when 2
      puts "Operação selecionada: SUBTRAÇÃO"
      puts "#{resultado_subtracao}"
  when 3
      puts "Operação selecionada: MULTIPLICAÇÃO"
      puts "#{resultado_multiplicacao}"
  when 4
      puts "Operação selecionada: DIVISÃO"
      puts "#{resultado_divisao}"
  else
      puts "Operação invalida! Insira as opções de 1 a 4"
  end

  # Pergunta se o usuário deseja realizar outra operação
  puts "Deseja fazer outro cálculo? (s/n): "
  resposta = gets.chomp.downcase

  unless resposta == 's'
      puts "Encerrando a calculadora. Até mais!"
      break
  end
end