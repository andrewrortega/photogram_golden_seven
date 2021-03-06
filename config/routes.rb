Rails.application.routes.draw do
#CREATE
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/create_photo", {:controller => "photos", :action => "create_row"})

#READ
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:da_id", {:controller => "photos", :action => "show"})

#UPDATE
  get("/photos/:id/edit", {:controller => "photos", :action => "edit_form"})
  get("/update_photo/:id", {:controller => "photos", :action => "update_row"})

#DELETE
  get("/delete_photo/:id", {:controller => "photos", :action => "destroy_row"})


end
