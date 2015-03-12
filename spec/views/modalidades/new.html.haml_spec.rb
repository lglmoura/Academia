require 'rails_helper'

RSpec.describe "modalidades/new", :type => :view do
  before(:each) do
    assign(:modalidade, Modalidade.new(
      :nome => "MyString"
    ))
  end

  it "renders new modalidade form" do
    render

    assert_select "form[action=?][method=?]", modalidades_path, "post" do

      assert_select "input#modalidade_nome[name=?]", "modalidade[nome]"
    end
  end
end
