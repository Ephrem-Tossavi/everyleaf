require 'rails_helper'

RSpec.describe Task, type: :model do
    describe 'Fonction de modèle de tâche' do
      context 'Si le titre de la tâche est vide' do
        it 'Rester bloqué dans la validation' do
          task = Task.new(name: '', content: "Test d'échec")
          expect(task).not_to be_valid
        end
      end
    end
    describe 'Fonction de validation des tâches vides' do
      context 'Si les détails de la tâche sont vides' do
        it 'Validation interceptée' do
          # Décrivez le contenu ici
        end
      end
    end
    describe 'Fonction de validation des tâches décrites' do
      context 'Si le titre et les détails de la tâche sont décrits' do
        it 'Validation réussie' do
          # Décrivez le contenu ici
        end
      end
    end

    describe 'Fonction de recherche avec la méthode scope' do
      before do
        @task1 = FactoryBot.create(:task, name: 'Everyleaf1',content: 'step1', deadline:DateTime.now,status:0,priority:0)
        @task2 = FactoryBot.create(:second_task, name: 'Everyleaf2',content: 'step2', deadline:DateTime.now,status:1,priority:1)
        @task3 = FactoryBot.create(:task, name: 'Everyleaf3',content: 'step3', deadline:DateTime.now,status:2,priority:2)
      end
      it 'Rechercher par le titre' do
        expect(Task.title_search('Everyleaf3')).to include(@task3)
      end
      it 'Rechercher par le status' do
        expect(Task.order_by_status(0)).to include(@task1)
      end
      it 'Rechercher par niveau de priorité' do
        expect(Task.order_by_priority(1)).to include(@task2)
      end
      it 'Rechercher simultanement par le titre et le status' do
        expect(Task.title_search('Everyleaf2').order_by_status(1)).to include(@task2)
      end
    end
end