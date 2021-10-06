FactoryBot.define do
  factory :user do
    id {1}
    name {"MyAdmin"}
    email {'myadmin@gmail.com'}
    password {"password"}
    is_admin {true}
  end
  factory :second_user, class: User do
    id {2}
    name {"MyUser"}
    email {'myuser@gmail.com'}
    password {"password"}
    is_admin {false}
  end
end