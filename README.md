# Aplicação Rails para testar diversas gems

Aqui misturo diversas gems, o importante é o conhecimento, talvez a aplicação não tenha muito sentido agora, mas depois vai ficar massa! Toda gem que eu for utilizando vou postando e cada funcionalidade da aplicação vou colocando aqui.
## Gems usadas
- devise
- cancancan
- draper
- caxlsx
- byebug
- ransack
- rspec
- kaminari
- simple_form
- audited
- wicked_pdf
- cocoon
- pg

## Níveis de acesso
Existem 7 níveis de acesso na aplicação:

**- Admin:**
  - Só pode ver as coisas do menu admin

**- Auditor:**
  - Pode visualizar todos os usuários, carros e a página de auditoria

**- Colaborador (collaborator):**
  - Só pode ver as coisas do menu collaborator

**- Gerente (manager):**
  - Pode fazer todas as operações referentes ao carro

**- Registrado (registred):**
  - Pode fazer todas as operações referentes ao carro do próprio usuário que cadastrou

**- Superadmin:**
  - Pode fazer todas as operações da aplicação (modo deus)

**- Supervisor:**
  - Só pode ver as coisas do menu supervisor

## Próximos passos
- Estudar draper para implementar em algum lugar da app
- Estudar wicked_pdf para implementar em algum lugar da app
- Estudar caxlsx para implementar em algum lugar da app 
- Estudar audity para implementar em alguma auditoria
- Estudar mais sobre byebug
- Estudar rubocop
- Estudar cocoon
- Estudar polimorfismo
- Implementar sistema de cookie para política de privacidade
- Implementar tema noturno
- ActiveStorage para poder adicionar imagem do usuário e no carro
- Kaminari para paginação
- Bootstrap para deixar a aplicação bonita
- Fontawesome
- Implementar simple form para substituir o form padrão do rails
- Rspec para testes