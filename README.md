# Sistema de Gerenciamento de Biblioteca

Este é um sistema de gerenciamento de biblioteca de linha de comando (CLI) simples, escrito em Ruby.

## Diagrama de Fluxo

```
+------------------------------------+
|       Início do Aplicativo         |
+------------------------------------+
              |
              v
+------------------------------------+
|        Carregar Livros de          |
|          `books.json`              |
+------------------------------------+
              |
              v
+------------------------------------+
|         Exibir Menu Principal      |
|   1: Adicionar Livro               |
|   2: Listar Livros                 |
|   3: Atualizar Livro               |
|   4: Deletar Livro                 |
|   5: Sair                          |
+------------------------------------+
              |
              v
+------------------------------------+
|       Aguardar Entrada do Usuário  |
+------------------------------------+
              |
+-------------+----------------+-------------+----------------+-------------+
|             |                |             |                |             |
v             v                v             v                v             v
(1)           (2)              (3)           (4)              (5)           (Outro)
+------+      +------+         +------+      +------+         +------+      +------+
| Adic.|      | List.|         | Atua.|      | Del. |         | Sair |      | Erro |
+------+      +------+         +------+      +------+         +------+      +------+
   |             |                |             |                |             |
   v             v                v             v                v             v
+----------+  +----------+     +----------+  +----------+     +----------+  +----------+
| Coletar  |  | Iterar e |     | Coletar  |  | Coletar  |     | Salvar   |  | Exibir   |
| Detalhes |  | Exibir   |     | ID e     |  | ID do    |     | Livros   |  | Mensagem |
| do Livro |  | Livros   |     | Detalhes |  | Livro    |     | em       |  | de Erro  |
+----------+  +----------+     +----------+  +----------+     | `books.json`|  +----------+
   |             |                |             |                +----------+      |
   v             |                v             v                     |            |
+----------+     |             +----------+  +----------+              v            |
| Adicionar|     |             | Encontrar|  | Encontrar|         +----------+     |
| à Lista  |     |             | e Atua.  |  | e Remover|         | Encerrar |     |
| de Livros|     |             | Livro    |  | Livro    |         +----------+     |
+----------+     |             +----------+  +----------+              |            |
   |             |                |             |                     |            |
   |             |                |             |                     |            |
   +-------------------------------------------------------------------+------------+
                                  |
                                  v
                       +----------------------+
                       | Voltar ao Menu       |
                       | Principal            |
                       +----------------------+

```
