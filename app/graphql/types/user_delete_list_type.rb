# frozen_string_literal: true

module Types
  class UserDeleteListType < Base::Object
    I18N_PATH = 'graphql.types.user_delete_list_type'

    graphql_name 'UserDeleteListType'
    implements Types::Interfaces::Node

    description I18n.t("#{I18N_PATH}.desc")

    field :deleted_list_id,
          ID,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.id"),
          method: :id
  end
end
