require 'rails_helper'

RSpec.describe "treinos/show", :type => :view do
  before(:each) do
    @treino = assign(:treino, Treino.create!(
      :aluno => nil,
      :modalidade => nil,
      :horario => "Horario"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Horario/)
  end
end
