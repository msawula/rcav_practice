Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  #Square of a particular number
  get("/square/:side_length", { :controller => 'calculations', :action => 'squaring' })

#Square root of a particular number
  get("/square_root/:value", { :controller => 'calculations', :action => 'square_root' })

#Random number
get("/random/:lower/:upper", { :controller => 'calculations', :action => 'random' })


#Payment
get("/payment/:interestrate/:years/:loanamount", { :controller => 'calculations', :action => 'payment' })

end
