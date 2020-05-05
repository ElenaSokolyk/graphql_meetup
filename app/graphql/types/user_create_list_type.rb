# frozen_string_literal: true

module Types
  class UserCreateListType < Base::Object
    I18N_PATH = 'graphql.types.user_create_list_type'

    graphql_name 'UserCreateListType'
    implements Types::Interfaces::Node

    description I18n.t("#{I18N_PATH}.desc")

    field :id,
          ID,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.id")

    field :lists,
          Types::ListsCollectionType,
          null: true,
          description: I18n.t("#{I18N_PATH}.fields.lists")

    def lists
      OpenStruct.new(nodes: object.lists)
    end
  end
end
