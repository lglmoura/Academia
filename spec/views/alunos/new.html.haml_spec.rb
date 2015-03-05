require 'rails_helper'

RSpec.describe "alunos/new", :type => :view do
  before(:each) do
    assign(:aluno, Aluno.new(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders new aluno form" do
    render

    assert_select "form[action=?][method=?]", alunos_path, "post" do

      assert_select "input#aluno_nome[name=?]", "aluno[nome]"

      assert_select "input#aluno_endereco[name=?]", "aluno[endereco]"

      assert_select "input#aluno_telefone[name=?]", "aluno[telefone]"
    end
  end
end
