json.array!(@treinos) do |treino|
  json.extract! treino, :id, :aluno_id, :modalidade_id, :horario
  json.url treino_url(treino, format: :json)
end
