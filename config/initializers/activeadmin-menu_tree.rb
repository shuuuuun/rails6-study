# pp ActiveAdmin::MenuTree::VERSION

ActiveAdmin::MenuTree.setup do |config|
  # config.menu_tree = Settings.activeadmin.menu_tree.map(&:to_hash)
  # config.menu_tree = YAML.load_file("_snippets/sample.yml")
  config.menu_tree = [
    {
      name: "Dashboard"
    }, {
      label: "User",
      children: [{
        name: "User"
      }]
    }, {
      label: "Other",
      children: [{
        name: "Foo"
      }, {
        name: "Bar"
      }]
    }, {
      label: "Admin",
      children: [{
        name: "AdminUser",
        label: "Admin Users"
      }, {
        name: "Comment",
        label: "Admin Comments",
        url: "/admin/comments"
      }]
    }, {
      label: "Site",
      url: "https://example.com",
      html_options: {
        target: "blank"
      }
    }
  ]
end
