# Aula 2
Como essa aula pareceu mais um dicionário eu resolvi escrever como se fosse um.  

**Artefato**:  
Artefato é qualquer objeto usado para compor um software.  
```
Exemplos de artefatos:

Diagrama de classe
Caso de uso
Outros UMLs
Requisitos funcionais e não funcionais
Arquivos (.c, .java, .py, cpp)
Manual do usúario
...
```
Professor falou que linhas de código **não** são artefatos.  
Acredito que o mótivo disso sejá porque não é tangível, mas não sei direito o que querem dizer com tangível.  

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

**Interessados**:  
Qualquer coisa que interagir com o software é um interessado.  
Eu tenho um ventilador com controle. O controle tem um software, quem são os interessados do software?  
Eu sou um interessado.  
O software no ventilador é um interessado.  
A pessoa que pediu para contruir o software é um interessado.  
Etc.  

**Necessidades explícitas**:  
Todas necessidades que foram devidamente anotadas/escritas/faladas, passadas para você por algum meio de comunicação.  

**Necessidades implícitas**:  
Necessidades que **não** foram devidamente anotadas/escritas/faladas, passadas para você por algum meio de comunicação.  
O motivo disso é, as vezes nem o cliente sabe dizer o que quer **ou** o que é **ou** acha que já esta subentendido **ou** conhecimento que vamos obter durante o desenvolvimento do sistema.  

**Engenharia Software**:  
> Engenharia de Software visa desenvolver economicamente software adequado a todos os interessados possuindo qualidade assegurada e capaz de operar fidedignamente em ambientes reais

Em outras palavras, faz software de qualidade.  

**Sistema**:  
Um conjunto de elementos/artefatos interdependetes, ou seja, elementos quem afetam a todos os outros no conjunto e que por sua vez são afetados por todos os outros no conjunto.  
E esses elementos trabalham em conjunto para obter um objetivo em comum.  

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
Geralmente tratamos o erro ao nota-lo (try, catch).  

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
