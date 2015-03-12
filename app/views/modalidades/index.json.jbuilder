json.array!(@modalidades) do |modalidade|
  json.extract! modalidade, :id, :nome
  json.url modalidade_url(modalidade, format: :json)
end
