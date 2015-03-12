require 'rails_helper'

RSpec.describe "modalidades/index", :type => :view do
  before(:each) do
    assign(:modalidades, [
      Modalidade.create!(
        :nome => "Nome"
      ),
      Modalidade.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of modalidades" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
