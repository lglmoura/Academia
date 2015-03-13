require 'rails_helper'

RSpec.describe "treinos/new", :type => :view do
  before(:each) do
    assign(:treino, Treino.new(
      :aluno => nil,
      :modalidade => nil,
      :horario => "MyString"
    ))
  end

  it "renders new treino form" do
    render

    assert_select "form[action=?][method=?]", treinos_path, "post" do

      assert_select "input#treino_aluno_id[name=?]", "treino[aluno_id]"

      assert_select "input#treino_modalidade_id[name=?]", "treino[modalidade_id]"

      assert_select "input#treino_horario[name=?]", "treino[horario]"
    end
  end
end
