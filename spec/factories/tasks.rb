FactoryBot.define do
  factory :task do
    name {'titre1_factory'}
    content {'contenu1_factory'}
    deadline {DateTime.now +1.day}
    status {"unstarted"}
    priority {"Low"}
    user_id {nil}
  end
  factory :second_task, class: Task do
    name {'titre2_factory'}
    content {'contenu2_factory'}
    deadline {"2021-10-31"}
    status {"progress"}
    priority {"High"}
    user_id {nil}
  end
end