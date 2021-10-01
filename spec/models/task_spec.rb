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
end