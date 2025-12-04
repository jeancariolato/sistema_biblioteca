
require 'json'
require_relative 'livro'

# O módulo Armazenamento lida com o carregamento e salvamento de livros em um arquivo JSON.
module Armazenamento
  CAMINHO_ARQUIVO = 'livros.json'.freeze

  # Carrega os livros do arquivo JSON.
  def self.carregar_livros
    return [] unless File.exist?(CAMINHO_ARQUIVO)

    file_content = File.read(CAMINHO_ARQUIVO)
    return [] if file_content.empty?

    begin
      data = JSON.parse(file_content)
      data.map do |book_hash|
        Livro.new(
          id: book_hash['id'],
          titulo: book_hash['titulo'],
          autor: book_hash['autor'],
          ano: book_hash['ano'],
          status: book_hash['status']
        )
      end
    rescue JSON::ParserError
      []
    end
  end

  # Salva os livros no arquivo JSON.
  def self.salvar_livros(livros)
    File.write(CAMINHO_ARQUIVO, JSON.pretty_generate(livros.map(&:para_hash)))
  end
end
