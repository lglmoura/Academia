require 'rails_helper'

RSpec.describe "alunos/edit", :type => :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit aluno form" do
    render

    assert_select "form[action=?][method=?]", aluno_path(@aluno), "post" do

      assert_select "input#aluno_nome[name=?]", "aluno[nome]"

      assert_select "input#aluno_endereco[name=?]", "aluno[endereco]"

      assert_select "input#aluno_telefone[name=?]", "aluno[telefone]"
    end
  end
end
