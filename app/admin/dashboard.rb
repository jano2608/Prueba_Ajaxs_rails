ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    
    
    columns do
      column do
        panel "Users" do
          ul do
            User.count
          end
        end
      end
     end
     columns do
      column do
        panel "Complaint" do
          ul do
            Complaint.count
          end
        end
      end
     end
     columns do
      column do
        panel "Company" do
          ul do
            Conpany.count
          end
        end
      end
     end
   
  end 
end
