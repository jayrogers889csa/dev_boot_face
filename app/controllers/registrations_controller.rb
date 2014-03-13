class RegistrationsController < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # def create
  #   User.create(params[:user])
  # end
 
  # def update
  #   person = current_account.people.find(params[:id])
  #   person.update_attributes!(person_params)
  #   redirect_to person
  # end
 
#   private
 
#     def user_params
#       params.require(:user).permit(:first_name, :last_name)
#     end
# end





end
