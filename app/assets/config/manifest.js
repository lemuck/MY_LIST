//= link_tree ../images
//= link_directory ../stylesheets .css
{
  "name": "My List"
  "title": "My List - Manage Your Groceries"
  "description": "MyList is the best application to manage your grocery shopping. Choose recipes and easily know what you need to buy for it."
  "display": "fullscreen"
  "image": "cover.png" # should exist in `app/assets/images/` [
    <% files = Dir.entries(Rails.root.join("app/assets/images/icons/")).select {| f | !File.directory ? f} %>
    <% files.each_with_index do | file, index | %>
      <% match = file.match(/.+-(?<size>\d{2,3}x\d{2,3}).png/) %>
  {
    "src": "<%= image_path "icons/#{ file } " %>",
      "sizes": "<%= match && match[:size] %>",
        "type": "image/png"
      }<%= "," unless(files.size - 1) == index %>
    <% end %>
  ]
}
