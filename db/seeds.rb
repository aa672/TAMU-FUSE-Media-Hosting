ModuleSection.create!([
  {module_name: "Example Module 1"},
  {module_name: "Example Module 2"}
])

User.create!([
  {username: "member", password: "123456", role: 0},
  {username: "admin", password: "123456", role: 1},
  {username: "root", password: "123456", role: 2}
])