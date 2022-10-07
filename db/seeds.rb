ModuleSection.create!([
  {module_id: 1, module_name: "Mod name"},
  {module_id: 2, module_name: "Mod 2"}
])
Page.create!([
  {page_id: 1, module_id: 1, content_id: 1, page_name: "Page 1", page_description: "Desc 1"},
  {page_id: 2, module_id: 2, content_id: 2, page_name: "Page 2", page_description: "Desc 2"}
])
