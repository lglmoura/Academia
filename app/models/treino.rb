class Treino < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :modalidade
end
