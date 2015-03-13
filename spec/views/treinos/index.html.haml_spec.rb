require 'rails_helper'

RSpec.describe "treinos/index", :type => :view do
  before(:each) do
    assign(:treinos, [
      Treino.create!(
        :aluno => nil,
        :modalidade => nil,
        :horario => "Horario"
      ),
      Treino.create!(
        :aluno => nil,
        :modalidade => nil,
        :horario => "Horario"
      )
    ])
  end

  it "renders a list of treinos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
  end
end
