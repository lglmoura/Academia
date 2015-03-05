json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :endereco, :telefone
  json.url aluno_url(aluno, format: :json)
end
