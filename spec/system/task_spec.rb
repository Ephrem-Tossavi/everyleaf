require 'rails_helper'
RSpec.describe 'Fonction de gestion des tâches', type: :system do
    before do
      FactoryBot.create(:task)
      FactoryBot.create(:second_task)
    end
  describe 'Nouvelle fonction de création' do
    context "Lors de la création d'une nouvelle tâche" do
      it "La tâche créée s'affiche" do
        #task = FactoryBot.create(:task, name: 'task')
        #visit tasks_path
        #expect(page).to have_content 'task'
      end
    end
  end
  describe "Fonction d'affichage de liste" do
    context "Lors de la transition vers l'écran de liste" do
      it "Une liste des tâches créées s'affiche" do
        task = FactoryBot.create(:task, name: 'Everyleaf', content: 'Step2', deadline: DateTime.now, status: "unstarted", priority: 'Low')
        visit tasks_path
        expect(page).to have_content 'Everyleaf'
      end
    end
    context "Lorsque les tâches sont classées par ordre décroissant de date et d'heure de création" do
      it 'La nouvelle tâche est affichée en haut' do
        @tasks = Task.all.order("created_at desc")
        visit tasks_path
        task_list = all('.task_row')
        expect(task_list[0]).to have_content 'titre2_factory'
        expect(task_list[-1]).to have_content 'titre1_factory'
      end
    end
  end
  describe "Fonction d'affichage détaillé" do
     context "Lors de la transition vers un écran de détails de tâche" do
       it "Le contenu de la tâche correspondante s'affiche" do
       end
     end
  end

  describe "Fonction de recherche" do
    context "Si vous effectuez une recherche par Title" do
      it "Filtrer par tâches qui incluent des mots-clés de recherche" do
        visit tasks_path
        fill_in 'search_title', with: 'titre1_factory'
        expect(page).to have_content 'titre1_factory'
      end
    end
    context "Lorsque vous recherchez un statut" do
      it "Les tâches qui correspondent exactement au statut sont réduites" do
        visit tasks_path
        select 'progress', from: 'search_status'
        expect(page).to have_content 'contenu2_factory'
      end
    end
    context "Recherche simultanée par le titre et le status" do
      it "Affinez les tâches qui incluent des mots clés de recherche dans le Title et correspondent exactement au status" do
        visit tasks_path
        fill_in 'search_title', with: 'titre1_factory'
        select 'unstarted', from: 'search_status'
        expect(page).to have_content 'titre1_factory'
      end
    end
  end
end