class Estado < ApplicationRecord
 belongs_to :unidade
  has_many :cidades
  validates :nome, presence: true
  validates :sigla, length: { minimum: 2 }, presence: true
  
  def to_s
   self.nome + ", " + self.unidade.nome;
  end
end
