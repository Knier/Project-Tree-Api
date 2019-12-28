class CreateTemplateCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :template_codes do |t|
      t.string :language
      t.text :content

      t.timestamps
    end
  end
end
