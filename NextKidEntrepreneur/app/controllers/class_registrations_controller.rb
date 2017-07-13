class ClassRegistrationsController < ApplicationController
  def new
    @class = Class.all
  end

  def create
    @class = Class.find(class_params[:class_id])
    amount = (class.price * 100).to_i
    customer = Stripe::Customer.create(
      :email => current_user.email,
      :source  => params[:stripeToken]
      )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => amount,
      :description => class.name,
      :currency    => 'usd'
      )

    @new_charge = current_user.charges.create(uid: charge.id, amount: charge.amount / 100, description: charge.description, customer_id: customer.id)
    current_user.update(class_id: @class.id)
    render 'show'

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to "/class_registrations/new"
  end

  def class_params
    params.require(:class).permit(:class_id).merge(user_id: current_user.id)
  end

end
