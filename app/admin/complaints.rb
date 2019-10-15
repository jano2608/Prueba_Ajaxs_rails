ActiveAdmin.register Complaint do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :conpany_id, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :conpany_id, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do|f|  
    inputs 'Agregar un nueva Empresa' do    
        
      input :content
    end  
    actions
  end
  permit_params :content
end
