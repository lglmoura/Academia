# coding: utf-8
require 'rails_helper'

feature 'gerenciar Treino' do
  before :each do
    create(:aluno, nome: 'Luiz')
    create(:modalidade, nome: 'Natacao')
  end

  let(:aluno) {create(:aluno, nome: 'Boy')}
  let(:modalidade) {create(:modalidade, nome: 'Musculacao')}

  scenario 'incluir Treino' do # , :js => true do
    visit new_treino_path
    preencher_e_verificar_treino
  end

  scenario 'alterar Treino' do #, :js => true do
    treino = FactoryGirl.create(:treino, aluno: aluno, modalidade: modalidade)

    visit edit_treino_path(treino)
    preencher_e_verificar_treino
  end

  scenario 'excluir treino' do #, :javascript => true do
    treino = FactoryGirl.create(:treino, aluno: aluno, modalidade: modalidade)
    visit treinos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_treino

    select 'Luiz', from: 'Aluno'
    select 'Natacao', from: 'Modalidade'
    fill_in 'Horário', :with => "9:00"


    click_button 'Salvar'

    expect(page).to have_content 'Aluno: Luiz'
    expect(page).to have_content 'Modalidade: Natacao'
    expect(page).to have_content 'Horário: 9:00'


  end

end