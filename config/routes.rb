Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:num", {:controller => "calculations", :action => "square"})
  get("/square_root/:num", {:controller => "calculations", :action => "square_root"})
  get("square_root_form", {:controller => "calculations", :action => "square_root_form"})
  get("/random/:min/:max", {:controller => "calculations", :action => "random"})
  get("/payment/:rate/:years/:loan", {:controller => "calculations", :action => "payment"})
end
