require 'rails_helper'

RSpec.describe "treinos/edit", :type => :view do
  before(:each) do
    @treino = assign(:treino, Treino.create!(
      :aluno => nil,
      :modalidade => nil,
      :horario => "MyString"
    ))
  end

  it "renders the edit treino form" do
    render

    assert_select "form[action=?][method=?]", treino_path(@treino), "post" do

      assert_select "input#treino_aluno_id[name=?]", "treino[aluno_id]"

      assert_select "input#treino_modalidade_id[name=?]", "treino[modalidade_id]"

      assert_select "input#treino_horario[name=?]", "treino[horario]"
    end
  end
end
