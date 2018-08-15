class AddAvatarUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar_url, :string
  end
end

# <%= image_tag @user.avatar_url, height: 50 %>
# put avatar_url in seeds
# @users.do |avatar|
