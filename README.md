# TestePrimeControl

Para realizar o teste, é necessário configurar a máquina com o Robot Framework. As variáveis já estão definidas para evitar excessiva manutenção.

**Observação:** Um ponto importante a ser considerado é a existência do cliente a seguir, utilizado no teste de alteração.

| Código             | Nome                       | E-mail                      |
| ------------------ | -------------------------- | ---------------------------|
| tBvAIupmiNM2wMc81IIW | Cadastro Teste Finalizado | TesteCadastroFinalizado@testado.com |

O código do Robot está organizado em 5 pastas, dividindo responsabilidades e facilitando a manutenção. As pastas são:

- **Commom:** Armazena os paths, evitando paths não XPaths e, ao fazê-los, evita valores mais mutáveis, como em sistemas que usam Ionic. A classe nem sempre é confiável devido a mudanças frequentes.

- **Feature:** Armazena o Gherkin antes da automação, resumindo os passos durante a automação. Também guarda arquivos necessários para a automação.

- **Resource:** Contém configurações globais, variáveis usadas em diversos locais, e keywords básicas. Para testes envolvendo banco de dados ou API, armazena arquivos relevantes.

- **Service:** Recebe as keywords do Gherkin e executa seus passos.

- **Tests:** Contém o BDD após as alterações da pasta Feature. A execução ocorre ao executar a pasta [Tests].

Adoto uma prática de desenvolvimento para evitar repetição excessiva de timeouts, sleeps e outros tipos de waits. Isso melhora a legibilidade para usuários menos familiarizados. Crio keywords personalizadas das principais, como input text, click element, click button, etc. Altero seus nomes para o português, adiciono a keyword wait e outros tratamentos conforme necessário. Por exemplo:

```robot
Clicar Botão
[arguments]  ${element}  ${value}
 Wait Until Keyword Succeeds    5s    1s  click button  ${element}  ${value}  
```

Existe a pasta observações que está relacionado ao teste manual que houve algumas observações vistar na execução do mesmo. Enquanto na TesteAPI está os testes feitos direto no Postman como estava no documento e suas observações(acho melhor fazer com robot também kk)

**OBS** necessário executar na ordem de cima pra baixo [SELECT>EDIT>DELETE>UPDATE] por usar o script para já armazenar valores de Ids para o mesmo
