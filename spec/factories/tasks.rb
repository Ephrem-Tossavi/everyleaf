FactoryBot.define do
  factory :task do
    name {'titre1_factory'}
    content {'contenu1_factory'}
  end
  factory :second_task, class: Task do
    name {'titre2_factory'}
    content {'contenu2_factory'}
  end
end
