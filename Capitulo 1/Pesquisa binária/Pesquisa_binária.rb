# Aqui vemos uma função de pesquisa binária com array.

def pesquisa_binaria(lista, item)
  baixo = 0
  alto = lista.length - 1 

  while baixo <= alto
    meio = (baixo + alto) / 2.floor # No ruby para se utilizar a divisão inteira utilizamos o metódos <.floor> para divisão de inteiro no ruby.
    chute = lista[meio]
    if chute == item
      return meio
    elsif chute > item
      alto = meio - 1
    else
      baixo = meio + 1
    end
  end
  nil # No ruby, não temos o termo <none>, temo o equivalente que é <nil>. Retorna a ausência de um valor ou valor nulo.
end

minha_lista = [1, 3, 5, 7, 9]

puts pesquisa_binaria(minha_lista, 3) # Aqui tem que retorna = 1
puts pesquisa_binaria(minha_lista, -1) # Aqui tem que retorna = nil (valor não encontrado)