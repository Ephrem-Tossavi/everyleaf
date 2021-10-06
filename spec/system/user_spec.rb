require 'rails_helper'
RSpec.describe "Enregistrement d'utilisateurs; fonctionnalité session; fonctionnalité d'administration", type: :system do
  def user_login
    visit new_session_path
    fill_in 'session[email]', with: 'myuser@gmail.com'
    fill_in 'session[password]', with: 'password'
    click_button 'signin'
  end

  def admin_user_login
    visit new_session_path
    fill_in 'session[email]', with: 'myadmin@gmail.com'
    fill_in 'session[password]', with: 'password'
    click_button 'signin'
  end

#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  describe "Test d'enregistrement des utilisateurs" do
    context 'Première connexion' do
      it 'Enregistrement de nouveaux utilisateurs' do
        visit new_admin_user_path 
        fill_in 'user[name]', with: 'Ephrem'
        fill_in 'user[email]', with: 'ephrem@gmail.com'
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
        click_on "Signup"
        expect(page).to have_content 'General Tasks List'
      end
      it "L'utilisateur essaie de passer à l'écran de la liste des tâches sans se connecter, passez à l'écran de connexion" do
        visit tasks_path
        expect(current_path).to eq new_session_path
      end
    end
  end
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  describe 'Test de la fonctionnalité de session' do
    before do
      @admin_user = FactoryBot.create(:user)
      @user = FactoryBot.create(:second_user)
      user_login
    end

    context "Losque l'utilisateur n'est pas connecté" do
      it "Être capable de se connecter" do
        expect(page).not_to have_content 'There is no task created by this user'
      end
    end

    context 'Se connecter comme utilisaateur général' do
      it 'Vous pouvez accéder à votre écran de détails (Ma page)' do
        click_link 'Profile'
         expect(page).to have_content 'myuser@gmail.com'
      end

      it "Lorsqu'un utilisateur général passe à l'écran des détails d'une autre personne, il passe à l'écran de la liste des tâches" do
        visit user_path(1)
        expect(current_path).to eq tasks_path
      end

      it 'Être capable de se déconnecter' do
        click_link 'Logout'
        sleep 2
        page.driver.browser.switch_to.alert.accept
        sleep 5
        expect(current_path).to eq new_session_path
      end
    end
  end
# #******************************
  describe "Test de l'écran d'administration" do
    before do
        @admin_user = FactoryBot.create(:user)
        @user = FactoryBot.create(:second_user)
    end

    context 'Se conneter comme utilisateur général' do
      it "Les utilisateurs généraux ne peuvent pas accéder à l'écran de gestion" do
        user_login        
        #click_on "Admin screen"
        #visit user_path
        expect(page).not_to have_content 'Admin screen'
      end
    end

    context 'Se connecter comme administrateur' do
      before do
        admin_user_login
        click_on 'Admin screen'
      end 

      it "Les utilisateurs administrateurs doivent pouvoir accéder à l'écran d'administration" do
        expect(page).to have_content 'Task count'
      end

      it 'Les utilisateurs administrateurs peuvent enregistrer de nouveaux utilisateurs' do
        sleep 3
        click_on 'New User'
        sleep 3
        fill_in 'user[name]', with: 'Emery'
        fill_in 'user[email]', with: 'emery@gmail.com'
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
        click_on "Signup"
        sleep 3
        click_on 'Admin screen'

        visit admin_users_path
        expect(page).to have_content 'Emery'
      end

      it "Les utilisateurs administrateurs doivent pouvoir accéder à l'écran des détails de l'utilisateur" do
        sleep 1
        click_link 'Show'
        expect(page).to have_content 'Edit'
      end

      it "L'utilisateur administrateur peut modifier l'utilisateur à partir de l'écran d'édition de l'utilisateur" do
        click_on 'Edit'

        fill_in 'user[name]', with: 'Emery14'
        fill_in 'user[password]', with: '00000000'
        fill_in 'user[password_confirmation]', with: '00000000'
        click_on "Update"
        sleep 3
        click_on 'Admin screen'
        expect(page).to have_content 'Emery14'
      end

      it "Les utilisateurs administrateurs peuvent supprimer des utilisateurs" do
        sleep 1
        click_on 'Destroy'
        page.driver.browser.switch_to.alert.accept
        expect(page).not_to have_content "Emery"
      end
    end
  end
end