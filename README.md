## Faker Library ...

Ela gera nomes, e-mails, senhas, endereços, etc, tudo fake e aleatório a cada execução.
 - pip install robotframework-faker


## pip install robotframework-browser:

Este comando instala o robotframework-browser, que é uma biblioteca para o Robot Framework que permite a automação de testes em navegadores da web. O pip é o gerenciador de pacotes do Python.
cd venv\Lib\site-packages\Browser\wrapper:

Este comando muda o diretório de trabalho atual para a pasta wrapper dentro do pacote Browser que está localizado na pasta site-packages do ambiente virtual (venv). O cd significa "change directory".
npm install request:

Aqui, o npm (Node Package Manager) é utilizado para instalar o pacote request, que é uma biblioteca para fazer requisições HTTP em Node.js. Isso é importante para a comunicação com APIs ou outras fontes de dados.
npm install --production:

Este comando instala todas as dependências listadas no package.json do projeto, mas apenas as dependências necessárias para a produção, ou seja, não instala as dependências de desenvolvimento.


# Adicionar item no carrinho

Explicação dos Componentes
- Settings: Importa as bibliotecas necessárias, como a RequestsLibrary para
realizar requisições HTTP e Collections para manipulação de estruturas de
dados.
- Variables: Define variáveis utilizadas no teste, incluindo a URL base da API, o
ID do usuário e os produtos a serem adicionados ao carrinho.
- Test Cases: Contém o caso de teste principal que executa as seguintes
etapas:
o Cria uma sessão HTTP com a URL base.
o Chama o keyword Adicionar itens ao carrinho passando o ID do usuário
e a lista de produtos.
o Verifica a resposta da requisição utilizando o keyword Verificar resposta.
- Keywords:
o Criar sessão: Inicializa uma sessão HTTP com um alias e uma URL
base.
o Adicionar itens ao carrinho: Constrói o payload JSON com o ID do
usuário e a lista de produtos, realiza uma requisição POST para o
endpoint /carts/add e retorna a resposta.
o Verificar resposta: Verifica se o status da resposta é 200 e exibe o
conteúdo da resposta no console.

# Atualizar item do carrinho

O teste verifica se o código de status da resposta é 200, indicando sucesso na
operação. Além disso, o conteúdo da resposta é registrado no log para análise
adicional.
Considerações Importantes:

- Método HTTP PUT: O método PUT é utilizado para criar ou substituir um
recurso no servidor com os dados fornecidos. Neste contexto, ele atualiza o
carrinho de compras com as informações fornecidas.
- Cabeçalhos e Corpo da Requisição: É essencial definir o cabeçalho Content-
Type como application/json e estruturar o corpo da requisição no formato JSON
adequado.

# Remover item do carrinho

Explicação do Código:
- Settings: Importa a RequestsLibrary para permitir o envio de requisições
HTTP.
- Variables: Define a variável ${BASE_URL} com a URL base da API.
- Test Cases: Contém o caso de teste Remover Item do Carrinho, que chama a
palavra-chave Remover Item do Carrinho.
- Keywords: Define a palavra-chave Remover Item do Carrinho, que realiza os
seguintes passos:
o Cria uma sessão HTTP com a URL base.
o Envia uma requisição HTTP DELETE para o endpoint /carts/1.
o Verifica se o status da resposta é 200, indicando sucesso.
o Loga o conteúdo da resposta em formato JSON.
o Fecha todas as sessões HTTP abertas.
