class CreateTreinos < ActiveRecord::Migration
  def change
    create_table :treinos do |t|
      t.references :aluno, index: true
      t.references :modalidade, index: true
      t.string :horario

      t.timestamps null: false
    end
    add_foreign_key :treinos, :alunos
    add_foreign_key :treinos, :modalidades
  end
end
