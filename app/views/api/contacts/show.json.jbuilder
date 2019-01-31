
if current_user
json.partial! @contact, partial: "contact", as: :contact
end
  