# Aplicação Rails para testar diversas gems

Aqui misturo diversas gems, o importante é o conhecimento, talvez a aplicação não tenha muito sentido agora, mas depois vai ficar massa! Toda gem que eu for utilizando vou postando e cada funcionalidade da aplicação vou colocando aqui.
## Gems usadas
- devise
- cancancan
- draper
- caxlsx
- byebug

## Níveis de acesso
Existem 7 níveis de acesso na aplicação:

**- Admin:**
  - Só pode ver as coisas do menu Admin

**- Auditor:**
  - Pode visualizar todos os usuários e carros

**- Colaborador (collaborator):**
  - Só pode ver as coisas do menu Collaborator

**- Gerente (manager):**
  - Pode fazer todas as operações referentes ao Carro

**- Registrado (registred):**
  - Pode fazer todas as operações referentes ao Carro do próprio usuário que cadastrou

**- Superadmin:**
  - Pode fazer todas as operações da aplicação

**- Supervisor:**
  - Só pode ver as coisas do menu Supervisor