# coding: utf-8
require 'rails_helper'

feature 'gerenciar Modalidade' do

  scenario 'incluir Modalidade' do # , :js => true do
    visit new_modalidade_path
    preencher_e_verificar_modalidade
  end

  scenario 'alterar Modalidade' do #, :js => true do
    modalidade = FactoryGirl.create(:modalidade)
    visit edit_modalidade_path(modalidade)
    preencher_e_verificar_modalidade
  end

  scenario 'excluir modalidade' do #, :javascript => true do
    modalidade = FactoryGirl.create(:modalidade)
    visit modalidades_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_modalidade
    fill_in 'Nome', :with => "Musculação"


    click_button 'Salvar'

    expect(page).to have_content 'Nome: Musculação'


  end

end