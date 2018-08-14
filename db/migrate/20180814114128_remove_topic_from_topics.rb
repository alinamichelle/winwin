class RemoveTopicFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :topic, :string
  end
end
