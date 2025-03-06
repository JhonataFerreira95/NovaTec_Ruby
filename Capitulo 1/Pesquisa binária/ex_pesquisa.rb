puts "Bem-vindo à pesquisa binária!"

# Lista de nomes ordenados alfabeticamente
list = [
  "Alice", "Amanda", "Ana", "André", "Antônio", "Beatriz", "Bernardo", "Bianca", "Bruno", "Camila",
  "Carlos", "Carolina", "Cauã", "Cecília", "Clara", "Daniel", "Danilo", "Davi", "Diego", "Eduarda",
  "Eduardo", "Elisa", "Enzo", "Erick", "Fabiana", "Felipe", "Fernanda", "Fernando", "Francisco", "Gabriel",
  "Gabriela", "Giovanna", "Giovanni", "Gustavo", "Helena", "Henrique", "Igor", "Isabel", "Isabella", "Isadora",
  "João", "Júlia", "Juliana", "Kaique", "Laura", "Leandro", "Leonardo", "Letícia", "Lívia", "Lorena",
  "Luana", "Lucas", "Luís", "Luiza", "Manuela", "Marcela", "Marcos", "Maria", "Mariana", "Mário",
  "Matheus", "Miguel", "Milena", "Nathalia", "Nicolas", "Paola", "Paulo", "Pedro", "Pietra", "Rafael",
  "Raquel", "Rebeca", "Renan", "Rodrigo", "Samuel", "Sara", "Sophia", "Tatiana", "Thiago", "Valentina",
  "Vanessa", "Victor", "Vinícius", "Vitor", "Yago", "Yasmin", "Abigail", "Adriana", "Alexandre", "Alice",
  "Amélia", "Arthur", "Bárbara", "Benício", "Breno", "Catarina", "César", "Clarice", "Débora", "Emanuel",
  "Esther", "Fábio", "Felícia", "Frederico", "Heloísa", "Hugo", "Iara", "Ícaro", "Isaac", "Joaquim",
  "Jorge", "José", "Lara", "Larissa", "Lavínia", "Luciana", "Marina", "Márcio", "Mirella", "Natália",
  "Otávio", "Rafaela", "Ricardo", "Roberto", "Sérgio", "Sofia", "Tânia", "Tomás", "Verônica", "William"
]

# Menu de opções
puts "Escolha uma opção:"
puts "1 - Pesquisar um nome na lista"
puts "2 - Duplicar a lista"
opcao = gets.chomp.to_i

case opcao
when 1
  # Opção 1: Pesquisa binária
  puts "Digite o nome que deseja pesquisar:"
  tentativa = gets.chomp

  # Função de pesquisa binária
  def pesquisa_binaria(lista, item)
    baixo = 0
    alto = lista.length - 1

    while baixo <= alto
      meio = (baixo + alto) / 2 # Calcula o índice do meio
      chute = lista[meio] # Obtém o valor no índice do meio

      if chute == item
        return meio # Retorna o índice se o item for encontrado
      elsif chute > item
        alto = meio - 1 # Ajusta o limite superior
      else
        baixo = meio + 1 # Ajusta o limite inferior
      end
    end

    nil # Retorna nil se o item não for encontrado
  end

  # Executa a pesquisa binária
  resultado = pesquisa_binaria(list, tentativa)

  # Exibe o resultado
  if resultado
    puts "Parabéns! O nome '#{tentativa}' foi encontrado na posição #{resultado}."
  else
    puts "Infelizmente, o nome '#{tentativa}' não foi encontrado na lista."
  end

when 2
  # Opção 2: Duplicar a lista
  lista_duplicada = list * 2 # Duplica a lista
  lista_duplicada.sort! # Ordena a lista duplicada (opcional)

  puts "Lista duplicada e ordenada:"
  puts lista_duplicada.inspect

else
  # Opção inválida
  puts "Opção inválida. Por favor, escolha 1 ou 2."
end

=begin

Menu de Opções:

O programa exibe um menu para o usuário escolher entre:

1: Pesquisar um nome na lista (pesquisa binária).

2: Duplicar a lista.

Opção 1: Pesquisa Binária:

O código da pesquisa binária permanece o mesmo. O usuário digita um nome, e o programa verifica se ele está na lista.

Opção 2: Duplicar a Lista:

A lista é duplicada usando o operador * (por exemplo, list * 2).

A lista duplicada é ordenada com o método .sort! (opcional, dependendo da necessidade).

A lista duplicada e ordenada é exibida.

Tratamento de Opção Inválida:

Se o usuário digitar uma opção diferente de 1 ou 2, o programa informa que a opção é inválida.

=end
