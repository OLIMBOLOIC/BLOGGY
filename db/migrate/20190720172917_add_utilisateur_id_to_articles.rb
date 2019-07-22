class AddUtilisateurIdToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :utilisateur_id, :integer
  end
end
