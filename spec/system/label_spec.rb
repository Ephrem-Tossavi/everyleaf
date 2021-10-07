require 'rails_helper'
RSpec.describe 'Fonction de gestion des tâches', type: :system do
  before do
    FactoryBot.create(:second_user)
    visit new_session_path
    fill_in 'session[email]', with: 'myuser@gmail.com'
    fill_in 'session[password]', with: 'password'
    click_button 'signin'
    
    FactoryBot.create(:task)
    FactoryBot.create(:second_task)
    FactoryBot.create(:label)
    FactoryBot.create(:labeling)
  end

  describe "Fonction de Label" do
    context "recher par label" do
        it "Retourner une liste avec recherche d'étiquette " do
          visit tasks_path
          select "Etude", from: "search_label"
          click_on "search"
          expect(page).to have_content 'Etude' 
        end
    end
  end 
end        