require 'rails_helper'

RSpec.describe "modalidades/show", :type => :view do
  before(:each) do
    @modalidade = assign(:modalidade, Modalidade.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
