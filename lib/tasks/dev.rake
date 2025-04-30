desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  if Rails.env.development?
    puts "Deleting the previous data..."
    Item.destroy_all
  end

  puts "Creating first item..."
  item_1 = Item.new
  item_1.link_url = "https://www.codecademy.com/learn/learn-html-fundamentals/modules/html-elements-and-structure/cheatsheet"
  item_1.link_description = "HTML Elements and Structure"
  item_1.thumbnail_url = "app/assets/images/codecademy.png"
  item_1.save

  puts "Creating second item..."
  item_2 = Item.new
  item_2.link_url = "https://www.codecademy.com/learn/learn-css-introduction/modules/syntax-and-selectors/cheatsheet"
  item_2.link_description = "CSS Syntax and Selectors"
  item_2.thumbnail_url = "app/assets/images/codecademy.png"
  item_2.save

  puts "Creating third item..."
  item_3 = Item.new
  item_3.link_url = "https://www.codecademy.com/learn/learn-css-box-model-and-layout/modules/learn-css-box-model/cheatsheet"
  item_3.link_description = "CSS Box Model"
  item_3.thumbnail_url = "app/assets/images/codecademy.png"
  item_3.save

  puts "Creating fourth item..."
  item_4 = Item.new
  item_4.link_url = "https://www.codecademy.com/learn/learn-css-flexbox-and-grid/modules/layout-with-flexbox/cheatsheet"
  item_4.link_description = "CSS Layout with Flexbox"
  item_4.thumbnail_url = "app/assets/images/codecademy.png"
  item_4.save

  puts "Done!"
end
