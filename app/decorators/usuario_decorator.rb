class UsuarioDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def email
    object.email
  end

  def actions_link
    link1 = h.link_to h.raw('<i class="showButton fa fa-eye"></i>'), object
    link2 = h.link_to h.raw('<i class="editButton fa fa-pen"></i>'), h.edit_usuario_path(object)
    link3 = h.link_to h.raw('<i class="deleteButton fa fa-times"></i>'), object, method: :delete, data: { confirm: 'Você tem certeza?' }
    link = link1 + link2 + link3
    link
  end
end
