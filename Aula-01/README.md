# Aula 1
Como essa aula pareceu mais um dicionário eu resolvi escrever como se fosse um.  

**Verificação**:  
Olhar um documento e verificar se está correto.  
Em outras palavras, ver se fez a 'coisa' direito ou implementou direito".  

**Validação**:  
Olhar um conjunto de documentos e verificar se estão corretos.  
Em outras palavras, ver se fez a**s** 'coisa**s**'' direito, ver se implementou o serviço direito.  

**Aceitação**:  
Ver se era isso que o usúario/cliente queria.  

Sempre bom ao final de cada 'coisa' verificar se está certo com o usuário/cliente.  
Se você simplesmente seguir a especificação, você pode até ter feito correto segundo a especificação, mas se a especificação estiver errada você vai acabar com muito retrabalho inútil.  

---

**Artefato**:  
Artefato é qualquer objeto usado para compor um software.  
Qualquer coisa tangível onde a qualidade pode ser verificada.    
```
Exemplos de artefatos:

Diagrama de classe
Caso de uso
Outros UMLs
Requisitos funcionais e não funcionais
Arquivos (.c, .java, .py, cpp)
Script
Manual do usúario
...
```
Professor falou que linhas de código **não** são artefatos pois não são tangíveis.  
Tangível não é para ser levado ao pé da letra, são coisas que você pode manipular e verificar a qualidade.  

E artefato pode ser composto de artefatos.  
```
Exemplo:  
Artefato A é composto do artefato B e C.  
Artefato B é composto do artefato D.  
Artefato C é composto por artefatos...  
```

**Qualidade de um artefato**:  
A qualidade de um artefato é analisada vendo o grau de satisfação de um conjunto de necessidades dos interessados.  
(Necessidades explícitas e implícitas)  

---

**Interessados/Stakeholders**:  
Qualquer coisa que interagir com o software é um interessado.  
Eu tenho um ventilador com controle. O controle tem um software, quem são os interessados do software?  
Eu sou um interessado. *(interessado humano)*  
O Ventilador é um interessado. *(interessado máquina)*  
A pessoa que pediu para contruir o software é um interessado. *(interessado humano)*  
...     

**Interessados humanos**:  
Ou também Stakeholders, são os interessados que são humanos e interagem com seu software.  

**Interessados maquinas**:  
Máquinas que interagem com seu software.  

---

**Necessidades explícitas**:  
Todas necessidades que foram devidamente anotadas/escritas/faladas, passadas para você por algum meio de comunicação.  

**Necessidades implícitas**:  
Necessidades que **não** foram devidamente anotadas/escritas/faladas, passadas para você por algum meio de comunicação.  
O motivo disso é, as vezes nem o cliente sabe dizer o que quer **ou** o que é **ou** acha que já esta subentendido **ou** conhecimento que vamos obter durante o desenvolvimento do sistema.  

---

**Engenharia Software**:  
> Engenharia de Software visa desenvolver economicamente software adequado a todos os interessados possuindo qualidade assegurada e capaz de operar fidedignamente em ambientes reais

Em outras palavras, faz software de qualidade.  

**Sistema**:  
Um conjunto de elementos/artefatos interdependetes, ou seja, elementos quem afetam a todos os outros no conjunto e que por sua vez são afetados por todos os outros no conjunto.  
E esses elementos trabalham em conjunto para obter um objetivo em comum.  

---

**Defeito**:  
É um fragmento de um artefato que, **se utilizado**, pode levar a um erro.  
Em outras palavras, um pedaço de um código que se for executado pode levar a um erro.  

O ponto que você tem que notar é que, defeitos não são horriveis. Se nunca forem utilizados então nunca causara nenhum erro.  

**Erro**:  
Surge por causa de um defeito.  
Um erro é o desvio entre o que é desejado/objetivo e o que é gerado/obtido. Em outras palavras, é um estado do sistema diferente do esperado.  

**Falha**:  
É um erro observado.  
Quando dizemos observado, queremos dizer que estamos cientes da existência dele durante o código, ou seja, notamos que ele ocorreu.   

**Latência do erro**:  
É o tempo entre o erro surgir e ele ser observado.  
O tempo que demorou para notar que existia um erro.  

Quanto maior o tempo, mas difícil vai ser de descobrir onde ocorreu.  
```
1)
|--------|
Erro    Observado

2)
|--------------------------------------------------|
Erro                                              Observado
```

Note que é mais fácil de descobrir o erro se observarmos o mais cedo possível.  

Existe varias maneiras de descobrir onde acontece o erro:  
Você pode ir andando passo a passo do seu programa até ver o erro.  
Você pode procurar uma região onde pode estar a causa da falha e você bota um breakpoint.  
Você pode usar o log.  
Para quem não tem log, usa varios printf.  

**Dano**:
Uma falha gera um dano no sistema, mas já que falha é um erro observado sabemos que o dano veio de algo conhecido/observado.  
> Dano é a consequência externa conhecida (prejuízo observado) provocado por uma falha

**Lesão**:
Um erro gera uma lesão no sistema, diferente do dano, você não observou/conhece ele e não sabe o prejuízo que está trazendo.  
> Lesão é a consequência externa desconhecida provocada por um erro não observado

**Vulnerabilidade**:  
Parte do artefato que quando usado de certa maneira, pode gerar um erro.  
Vulnerabilidades são como defeitos tirando pelo detalhe acima.  

Um usuário pode usar uma vulnerabilidade voluntariamente ou não, mas a consequência seria gerar um erro.  

---

**Anomalia(bad smell)**:  
- O artefato está correto, do ponto de vista funcional e não funcional, mas é difícil de manter.  
- Engenharia ruim.  
- Faz o que querem mas não faz de uma maneira boa pois é difícil de manter o software (consertar ou dar upgrade).  

> Tráz dificuldade para a manutenção

**Deficiência**:
- Interface humana ruim.  
- Induzir usuário a cometer erros de uso.  
- Documentação e auxílios não conformes com o implementado.  

> Programa está correto mas ele é muito ruim de usar

**Inadequação**:
- Não atende as reas necessidades dos interessados.  
- Não satisfaz os requisitos não funcionais e inversos estabelecidos.  

Esse é o pior caso?

---

**Risco**:  
Risco é a chance de um evento negativo acontecer.  
> Risco é um evento que tem uma probabilidade de ocorrer, impactando negativamente um interessado.  

Nós temos dois tipos de riscos  

**Risco de Desenvolvimento**:  
Por exemplo:  
Você não conseguir entregar o software no tempo que você prometeu.  
Isso pode ocorrer por milhares de motivos, sejá não ter tecnologia ou problemas técnicos.  

**Risco de Uso**:  
Por exemplo:  
Você quer se matricular e resolve se matricular o último dia da matricula e faltando 30 minutos.  
Você está correndo o risco de não conseguir, pois pode faltar luz ou muita gente acessar nesse mesmo horário...  
O risco de não conseguir se matricular é bem maior.  
Se fosse no primeiro dia, você ainda teria outros dias para tentar, além disso é pouco provável que a matricula fique offline todos os dias da matricula. Risco bem menor.  

O risco de não funcionar por um longo periodo é menor do que não funcionar por um curto periodo.  

---

**Qualidade satisfatória**:  
Quando atende as necessidades do cliente com o risco que satisfaça o cliente.  
Nós dividimos em 3 graus de qualidade:  
* Qualidade por construção
* Qualidade por desenvolvimento
* Qualidade por manutenção

**Qualidade por construção**:  
Um artefato possui qualidade por construção quando possui todas as qualidades satisfatórias antes do primeiro teste. Ou seja, se você fez algo correto antes do primeiro teste, qualidade por construção.  

Barragens é um exemplo disso, você não pode construir uma barragem, testar, ver se está funcionando, concertar, testar...  
Você tem que fazer funcionando desdo inicio.   

**Qualidade por desenvolvimento**:  
Um artefato possui qualidade por desenvolvimento quando possui todas as qualidades satisfatórias para tudo esperando. Ou seja, se você faz algo que funciona para tudo que você esperava, qualidade por desenvolvimento.  

**Qualidade por manutenção**:  
Um artefato possui qualidade por manutenção quando possui todas as qualidades satisfatórias para tudo esperando depoiss de qualquer manutenção ou atualização. Ou seja, se você faz uma manutenção e depois funcionou para tudo que você esperava, qualidade por manutenção.  

---

**Sistema intensivo em software**:  
Software + hardware usado para ajudar você a alcançar um objetivo.  

**Sistema correto**:  
Existe duas definições:  
- Um sistema que implementa exatamente as especifições.  
-

Qual o problema da primeira definição? A especificação pode estar incorreta.  
O que é qualidade? Especificações são qualidades.  
Especificações podem ser muitas coisas, por exemplo requisitos.  

**Requisito funcional**:  
Algo que o sistema deve fazer, necessidade do sistema.  

Ex:  
Faça um sistema que calcule a soma de 10 números.  
O sistema deve reservar a vaga de um cliente.  

**Requisito não funcional**
Caracteristicas técnicas do sistema.  
Requisitos não funcionais clássicos: segurança, usabilidade, confiabilidade, padrão, desempenho, hardware/software...

Ex:  
Faça um sistema que calcule a soma de 10 números em menos de 1 nanosegundo.  

---

**Qualidade**:  
Dar um valor/nota a coisa que está sendo observada.  
Para que possamos medir ou dar a nota a algo, precisamos ter uma maneira de medir/avaliar.  
Existe 4 tipos de medição.  
* Mensurar (tirar a medida)  
*
* Avaliação por especialista devidamente treinado
* Gosto  

**Mensurar**:  
Da mesma maneira que você mede com régua você consegue medir as coisas.  
Você consegue medir quanta energia está sendo gasta em um sistema.  
Você consegue medir quanta agua está sendo gasta.  

**Avaliação estatistica**:  

**Avaliação por especialista devidamente treinado**:  
É um humano que recebe um treinamento que permite ele fazer uma determinada avaliação.  
Por exemplo, um professor da uma nota a prova pois tem conhecimento da matéria e sabe dizer o que está certo ou errado, geralmente a nota segue um regulamento minimo de quanto vale cada coisa.  
Lado negativo, a chance de errar é bem maior do que os outros.  
Defesa de doutorado é outro exemplo, 3 professores avaliam.  

**Gosto**:  
"Acho que está correto".  
"Gosto dele assim".  
Nada confiável e muito dependente de alguém avaliar.  