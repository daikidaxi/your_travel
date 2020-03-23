crumb :root do
  link "ホーム", root_path
end

crumb :home do
  link "後で修正"
end

crumb :login do
  link "ログイン"
  parent :root
end

crumb :users do
  link 'ユーザー', users_path
  parent :root
end

crumb :user do |user|
  link "#{user.name}", user_path(user.id)
  parent :users
end

crumb :new_user do
  link "新規登録"
  parent :root
end

crumb :edit_user do |user|
  link "編集"
  parent :user,user
end

crumb :post do |post|
  link "#{post.country}",post_path(post)
  parent :user,post.user
end

crumb :countries do
  link "全ての国", countries_path
  parent :root
end

crumb :country do |name|
  link "#{name}"
  parent :countries
end

crumb :new_post do |post|
  link "訪れた国を追加"
  parent :user, post.user
end
crumb :edit_post do |post|
  link "編集"
  parent :post,post
end

crumb :follows do |user|
  link "フォロー"
  parent :user,user
end

crumb :followers do |user|
  link "フォロワー"
  parent :user,user
end

# crumb : do
#   link ""
#   parent :
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).