
require_relative 'storage'
require_relative 'livro'

class Biblioteca
  def initialize
    @livros = Armazenamento.carregar_livros
    @ultimo_id = @livros.map(&:id).max || 0
  end

  # Loop principal da aplicação
  def executar
    loop do
      exibir_menu
      escolha = gets.chomp.to_i
      processar_escolha(escolha)
    end
  end

  private

  # Imprime o menu de opções
  def exibir_menu
    puts "\n--- Menu da Biblioteca ---"
    puts "1: Adicionar Livro"
    puts "2: Listar Livros"
    puts "3: Atualizar Livro"
    puts "4: Deletar Livro"
    puts "5: Sair"
    print "Escolha uma opção: "
  end

  # Lida com a escolha do usuário
  def processar_escolha(escolha)
    case escolha
    when 1 then adicionar_livro
    when 2 then listar_livros
    when 3 then atualizar_livro
    when 4 then deletar_livro
    when 5 then sair_app
    else puts "Opção inválida. Tente novamente."
    end
  end

  # Adiciona um novo livro
  def adicionar_livro
    # Implementação futura
    puts "\nFunção de adicionar livro a ser implementada."
  end

  # Lista todos os livros
  def listar_livros
    # Implementação futura
    puts "\n--- Lista de Livros ---"
    if @livros.empty?
      puts "Nenhum livro cadastrado."
    else
      @livros.each do |livro|
        puts "ID: #{livro.id}, Título: #{livro.titulo}, Autor: #{livro.autor}, Ano: #{livro.ano}, Status: #{livro.status}"
      end
    end
  end

  # Atualiza um livro existente
  def atualizar_livro
    # Implementação futura
    puts "\nFunção de atualizar livro a ser implementada."
  end

  # Deleta um livro
  def deletar_livro
    # Implementação futura
    puts "\nFunção de deletar livro a ser implementada."
  end

  # Sai da aplicação
  def sair_app
    Armazenamento.salvar_livros(@livros)
    puts "Até logo!"
    exit
  end
end

# Inicia a aplicação
Biblioteca.new.executar
