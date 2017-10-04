# Aula 3

**Retrabalho inútil**:  
Trabalhar novamente em algo que já trabalhou, ou melhor, fazer de novo o que já fez. Geralmente você fez errado e teve que voltar para fazer novamente.  

Exemplos de trabalho inúteis:  
Encontrar o defeito de uma falha.  
Concertar o defeito.  
Testar novamente tudo pois o cencerto pode ter trago mais defeito.  
Descobriu que entendeu errado o que era para o programa fazer e agora tem que concertar.  

**Manutenção corretiva**:  
Eliminar defeito observados durante o uso.  

**Qualidade dos artefatos**:  
* Qualidade do serviço (qualidade externa)  
* Qualidade da engenharia (qualidade interna)  

**Qualidade do serviço**:  
É a funcionalidade, desempenho, segurança... Pense nos requisitos não funcionais da Aula 2.  
São tarefas que o usuário quer realizar.  

**Qualidade da engenharia**:  
Organização interna do programa.  
É o instrumento atráves do qual conseguimos a qualidade do serviço.  

**Consequência de falta de qualidade**:  
Perdas financeiras  
* Custo de um falha no sistema.  
* Custo da manutenção corretiva.  
* Custo da recuperação.  
* Clientes insatisfeitos.  

Perdas materiais  
* Máquina quebrada.  
* Material perdido.  

Perdas humanas  
* Perdas de vidas.  

Perdas ecológicas......

---

**Garantia da qualidade**:  
Assegurar que tenha qualidade.  
Para isso devemos fazer muitas coisas, não basta apenas testar. Tem que seguir uma forma de trabalhar que leva você a qualidade garantida.  
Por exemplo, você não pode trabalhar com o 'olhometro', você tem que saber medir.  

Garantia de qualidade implica você dispor de especificações que deixem claro como vai ser avaliado a qualidade.  

**Solicitação exógenas**:  
Especificações produzidas por pessoas de fora, são coisas que interessam pessoas de fora da equipe.  

**Solicitação endogenas**:  
Especificações produzidas pela equipe, são coisas que interessam pessoas de dentro da equipe.  

**Especificação de software**:  
São representações de como o software vai funciona, essa representação pode ser por texto/tabela/diagrams.  
Normalmente essas representações são **ad hoc**, ou seja, inventadas pelo redator e não tem uma regra de sintaxe, nem semântica. Lado negativo é que acabam por ser confusas justamente por não ter maneira certa de fazer.  

**Propriedades básicas de representações**:  
* Inteligibilidade: Fácil de entender para a todos que esse software interessa.  
* Vocabulário usado: As palavras e termos tem que ser conhecida por todos involvidos que o software interessa.  
  * Dicionário de termos/dados: Uma lista de termos e seus significados, para que todos interessados possam conferir.  
    * Termo: Palavra usada que pode estar fora do conhecimento do interessado   
    * Significado: Explicação do que signfica.  
* Sintaxe: A representação estar sintaticamente correta em relação à linguagem de representação usada (se for ad hoc não tem muito como conferir).  
* Semântica: Todos interessados entendem a representação.  

**Laudo**:  
É um relatório de técnico de um problema ocorrido em um artefato.  
O que tem em um laudo:  
* Artefato  
  * Nome
  * Versão
  * Data
  * Quem
  * Como:
    * Revisão, inspeção
    * Caso de teste
    * Uso
    * Outros
* Tipo do problema
  * Código
  * Consulta
  * Documentação
  * Especificação (design)
  * Sugestão
* Serveridade
  * Possíveis danos provocados pelo problema
  * É possível continuar a usar?
    * [ ] não, prova danos sérios
    * [ ] não, é impossível utilizar os resultados
    * [ ] sim, se evitar a região problemática
    * [ ] sim, usando outra sequência de trabalho
    * [ ] sim, se desprezar alguns resultados
    * [ ] sim, pois somoente incomoda
* É reprodutível?
  * Identificação do problema
  * Descrição do problema e como produzi-lo
* Sugestão de solução
  * Isso nem sempre é desejável
* Solução
  * Estado da solução
    * Datas de mudança de estado
    * Responsáveis pelo trabalho nos estados de execução
  * Descrição da solução
  * Artefatos criados, alterados, eliminados
    * Versões resultantes
  * Possíveis causas das faltas identificadas
* FAP -  Ficha de acompanhamento de problemas
  * Registra o problema e a evolução da solução até sido completamente resolvido
    

Como você sabe se um artefato pode ser aprovado? Quando o laudo estiver vazio, ele pode ter varias pendências mas funciona.  
