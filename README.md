# Aplicação Rails para testar diversas gems

Aqui misturo diversas gems, o importante é o conhecimento, talvez a aplicação não tenha muito sentido agora, mas depois vai ficar massa! Toda gem que eu for utilizando vou postando e cada funcionalidade da aplicação vou colocando aqui.
## Gems usadas
- devise
- cancancan
- draper
- caxlsx
- byebug
- ransack

## Níveis de acesso
Existem 7 níveis de acesso na aplicação:

**- Admin:**
  - Só pode ver as coisas do menu admin

**- Auditor:**
  - Pode visualizar todos os usuários e carros

**- Colaborador (collaborator):**
  - Só pode ver as coisas do menu collaborator

**- Gerente (manager):**
  - Pode fazer todas as operações referentes ao carro

**- Registrado (registred):**
  - Pode fazer todas as operações referentes ao carro do próprio usuário que cadastrou

**- Superadmin:**
  - Pode fazer todas as operações da aplicação

**- Supervisor:**
  - Só pode ver as coisas do menu supervisor

## Próximos passos
- Implementar ransack na tela de listagem dos usuários para pesquisar por nome, email, carro ou role
- Estudar draper para implementar em algum lugar da app
- Estudar caxlsx para implementar em algum lugar da app
- ActiveStorage para poder adicionar imagem do usuário e no carro
- Kaminari para paginação
- Bootstrap para deixar a aplicação bonita
- Implementar simple form para substituir o form padrão do rails
- Rspec para testes