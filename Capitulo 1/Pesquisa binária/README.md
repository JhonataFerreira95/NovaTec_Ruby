# 🔎 Pesquisa Binária na Prática!  

### 📌 Suponha que você tem uma lista ordenada com 5 itens.  

#### 📋 Exemplo de lista ordenada:  
`[1, 3, 5, 9, 11]`

---

## 🛑 Forma Comum de Busca  
A busca linear verifica um elemento por vez, começando do menor `[1]` até o maior `[11]`, até encontrar o valor desejado.

---

## ⚡ Pesquisa Binária – O(log N)  
Aqui, sempre olhamos para o **meio do array**. No nosso caso, o número central é `[5]`.  

🔹 Se buscamos o número `[1]`, descartamos imediatamente os números **[9, 11]**, pois sabemos que o valor buscado está à esquerda.  
🔹 Com isso, reduzimos a quantidade de comparações e encontramos `[1]` em **apenas 2 passos**.  

✅ **Vantagem**: A pesquisa binária otimiza a busca, tornando-a muito mais rápida do que a busca linear, especialmente em listas grandes.
