# Projeto Desafio MySQL - Personalizando Acessos com Views e Automatizando com Gatilhos

Este projeto foi elaborado como requisito para o curso Formação SQL Database Specialist oferecido pela plataforma Digital Innovation One (DIO). Este é um projeto desenvolvido em MySQL que aborda a criação de visões personalizadas, permissões de acesso e gatilhos para diferentes cenários. O objetivo é criar uma estrutura de banco de dados para gerenciar informações de empregados, departamentos, projetos, dependentes e usuários, além de aplicar mecanismos de segurança e automatização de tarefas.

## Estrutura do Banco de Dados

O projeto utiliza um banco de dados relacional com as seguintes tabelas:

1. `database_desafio_dio.sql`: Cria as tabelas `employees`, `departments`, `projects`, e `dependents`, que armazenam informações sobre empregados, departamentos, projetos e dependentes, respectivamente.

2. `views.sql`: Define as visões personalizadas para atender aos seguintes cenários:
   - Número de empregados por departamento e localidade.
   - Lista de departamentos e seus gerentes.
   - Projetos com maior número de empregados.
   - Lista de projetos, departamentos e gerentes.
   - Empregados com dependentes e indicação se são gerentes.

3. `permissoes.sql`: Configura as permissões de acesso para os diferentes usuários:
   - Cria o usuário `gerente`, que possui acesso a algumas views e à tabela `employees`.
   - Cria o usuário `employee`, que possui acesso apenas à tabela `employees`.

4. `gatilhos.sql`: Implementa gatilhos para automatizar certas ações:
   - Gatilho `before_remove_usuario`: Antes de excluir um usuário da tabela `users`, insere os dados do usuário removido na tabela `usuarios_removidos`.
   - Gatilho `atualizacao_colaboradores`: Após a inserção de um novo registro na tabela `employees`, registra a atualização de salário na tabela `historico_salarios`.

## Utilização do Projeto

1. Crie o banco de dados e as tabelas: Execute o script `database_desafio_dio.sql` para criar a estrutura do banco de dados.

2. Defina as visões: Execute o script `views.sql` para criar as visões personalizadas com os dados necessários para os cenários especificados.

3. Configure as permissões de acesso: Execute o script `permissoes.sql` para conceder permissões adequadas aos usuários `gerente` e `employee`.

4. Crie os gatilhos: Execute o script `gatilhos.sql` para implementar os gatilhos que automatizam ações no banco de dados.

5. Teste o funcionamento: Utilize consultas SQL para verificar se as visões fornecem as informações desejadas e se os gatilhos executam as ações corretamente.

## Notas importantes

- Lembre-se de substituir as senhas definidas nos scripts pelos valores adequados para garantir a segurança das contas de usuários.

- Caso deseje utilizar dados de exemplo, você pode adicionar inserções adicionais nas tabelas após sua criação.

- Certifique-se de ter permissões de administrador para executar as ações de criação de banco de dados e usuários, bem como permissões adequadas para executar os scripts.
---