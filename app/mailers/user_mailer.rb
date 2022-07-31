class UserMailer < ApplicationMailer

  default from: 'alison.jpq@gmail.com'

  def body
    @product = params[:product]    
    mail(to: 'alison.jpq@gmail.com', subject:"Se creo un nuevo producto #{@product.name}")
  end  

end
