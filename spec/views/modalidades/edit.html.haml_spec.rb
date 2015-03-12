require 'rails_helper'

RSpec.describe "modalidades/edit", :type => :view do
  before(:each) do
    @modalidade = assign(:modalidade, Modalidade.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit modalidade form" do
    render

    assert_select "form[action=?][method=?]", modalidade_path(@modalidade), "post" do

      assert_select "input#modalidade_nome[name=?]", "modalidade[nome]"
    end
  end
end
