module UsersHelper    
   

def display_standard_table(users)
    columns = ["Name","Option"]
    thead = content_tag :thead do
        content_tag :tr do
         columns.collect {|column|  concat content_tag(:th,column,scope: 'col')}.join().html_safe
        end
      end
     
      tbody = content_tag :tbody do
       users.collect { |user|
         content_tag :tr do
           columns.collect { |column|
               concat content_tag(:td, user.name)
           }.to_s.html_safe
         end
       }.join().html_safe
      end
      content_tag :table, thead.concat(tbody)
     end 

     def gravatar_for(user, options = { size: 80 })
      size = options[:size]
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
      end
end