module UsersHelper    

    def users_list(users)
        # users.each do |user|
        # add_micropost = link_to('Add Micropost', Rails.application.routes.url_helpers.user_path(user),class: "btn btn-primary")
        # edit = link_to('Edit', Rails.application.routes.url_helpers.edit_user_path(user), class:"btn btn-primary")
        # destroy = link_to('Destroy',Rails.application.routes.url_helpers.edit_user_path(user) ,data: {
            # turbo_method: :delete,
            # turbo_confirm: "Are you sure?"}, class: "btn btn-primary")
        # return "<td>#{user.name}</td>
                # <td>#{add_micropost} #{edit} #{destroy}</td>"
                # .html_safe
           
                content_tag(:ul) do
                    users.map do |item|
                      concat(content_tag(:li, item.name))
                    end
                end
    end

   def table_identity
    table_head = ["Name","Email"]
    content_tag(:table,
        content_tag(:thead,
            content_tag(:tr,
             (content_tag(:th,"Name") + content_tag(:th,"Email")))),content_tag(:tbody))
    end

def display_standard_table(users)
    columns = ["Name","Option"]
    thead = content_tag :thead do
      content_tag :tr do
       columns.collect {|column| content_tag(:th,column, scope: 'col')}.join().html_safe
      end
    end
   
    # tbody = content_tag :tbody do
    #  users.collect { |elem|
    #    content_tag :tr do
    #      columns.collect { |column|
    #          concat content_tag(:td, elem.name)
    #          concat content_tag(:td, elem.email)
    #      }.to_s.html_safe
    #    end
   
    #  }.join().html_safe
    # end
   
    tbody = content_tag :tbody do
        content_tag(:tr) do
            users.map do |item|
              concat(content_tag(:td, item.name))
            end
        end
    end
    content_tag :table, thead.concat(tbody)
   
   end
   
   
end