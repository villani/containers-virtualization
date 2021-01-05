Trabalho Final para a Disciplina Containers & Virtualization (MBA FIAP)
=======================================================================

Solução “containerizada” para permitir o mesmo comportamento em diferentes ambientes. Utiliza balanceamento de carga para permitir alta disponibilidade. Não contém referências fixas no código pois os parâmetros são definidos em um arquivo específico para essa finalidade (.env). Container da aplicação também disponível em: 

- https://hub.docker.com/repository/docker/leonardovillani/containers-virtualization 

Pré-requisitos
--------------

Os passos a seguir são realizados com sucesso se o sistema operacional da máquina utilizada tiver instaladas as versões dos seguintes softwares: 

- Apache Maven 3.5.4 
- Docker 20.10.1 
- Docker-compose 1.27.4 
- JDK 11 

Não há garantias de sucesso do passo-a-passo se outras versões forem utilizadas. 

Instruções de execução a partir de imagem da aplicação no Docker Hub
--------------------------------------------------------------------

Crie na sua máquina um clone do repositório: 
 
```bash
git clone https://github.com/villani/containers-virtualization.git 
``` 

Em seguida, entre na pasta do repositório clonado: 
 
```bash
cd containers-virtualization 
```

Inicie os serviços da aplicação: 
 
```bash
docker-compose -f docker-compose-hub.yml up 
```
 
Use um navegador web para acessar o seguinte endereço: 

- http://localhost:8000 

Se todos os serviços tiverem sido inicializados com sucesso, a seguinte tela deverá ser carregada: 

![01-capa-aplicacao](https://user-images.githubusercontent.com/2698761/103656991-11cfc200-4f48-11eb-9f9b-020169b208ae.png) 

Instruções de execução a partir da construção de uma imagem local
-----------------------------------------------------------------

Crie na sua máquina um clone do repositório: 
 
```bash
git clone https://github.com/villani/containers-virtualization.git 
```

Em seguida, entre na pasta do repositório clonado: 
 
```bash
cd containers-virtualization 
```

Construa a aplicação a partir do comando: 

```bash
mvn package  
```

Inicie os serviços da aplicação, usando o arquivo que constrói a imagem do container da aplicação: 
 
```bash
docker-compose -f docker-compose-build.yml up 
```

Use um navegador web para acessar o seguinte endereço: 

- http://localhost:8000 

Se todos os serviços tiverem sido inicializados com sucesso, a seguinte tela deverá ser carregada: 

![01-capa-aplicacao](https://user-images.githubusercontent.com/2698761/103656991-11cfc200-4f48-11eb-9f9b-020169b208ae.png) 
 
Consumindo recursos da aplicação
--------------------------------

Um contrato da API está disponível em formato OpenAPI no repositório clonado (arquivo “openapi” na raiz do repositório). Use um software como o Postman para importar esse contrato e consumir os recursos da aplicação. Exemplo: 

- No canto superior esquerdo, clique em “Import”, “Upload files” e selecione o arquivo “openapi”. 

![02-importando-contrato](https://user-images.githubusercontent.com/2698761/103657123-42aff700-4f48-11eb-8bbc-475c7ed0b26e.png)
 
- Os “paths” e métodos disponíveis serão carregados no painel “Collections” do Postman. 

![03-visualizando-collections](https://user-images.githubusercontent.com/2698761/103657163-50657c80-4f48-11eb-91a4-91beccfdb3b8.png) 
 
- Em seguida, será necessário definir o valor da variável "baseUrl". No canto superior direito, clique no botão "Manage Environments", crie um ambiente e a variável "baseUrl". Defina o valor “localhost:8000” para essa variável e clique em “Add”. 

![04-gerenciando-ambiente](https://user-images.githubusercontent.com/2698761/103657214-607d5c00-4f48-11eb-9f48-f6f09bfc7ea1.png)
 
- Selecione o ambiente criado. 

![05-selecionando-ambiente](https://user-images.githubusercontent.com/2698761/103657245-6d9a4b00-4f48-11eb-8057-a52060f19773.png) 
 
- Inserindo um registro. 

![06-inserindo-registro](https://user-images.githubusercontent.com/2698761/103657300-80ad1b00-4f48-11eb-9cd3-8906e79b57ac.png)
 
- Exibindo os registros inseridos. 

![07-listando-inseridos](https://user-images.githubusercontent.com/2698761/103657339-8b67b000-4f48-11eb-8159-7fe7668e1787.png) 

Integrantes
-----------

Este trabalho foi desenvolvido por:

- Leonardo Villani;
- Luiz Armando Galesso.
