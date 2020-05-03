# frozen_string_literal: true

module Types
  class UserRemoveListItemType < Base::Object
    I18N_PATH = 'graphql.types.user_remove_list_item_type'

    graphql_name 'UserRemoveListItemType'
    implements Types::Interfaces::Node

    description I18n.t("#{I18N_PATH}.desc")

    field :removed_movie_id,
          ID,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.removed_movie_id"),
          method: :movie_id
  end
end
