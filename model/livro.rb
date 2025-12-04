
class Livro
  attr_accessor :id, :titulo, :autor, :ano, :status

  # Construtor da classe Livro.
  
  def initialize(id:, titulo:, autor:, ano:, status: 'disponível')
    @id = id
    @titulo = titulo
    @autor = autor
    @ano = ano
    @status = status
  end

  # Converte o objeto Livro para um formato de hash.
  
  def para_hash
    {
      id: @id,
      titulo: @titulo,
      autor: @autor,
      ano: @ano,
      status: @status
    }
  end
end
