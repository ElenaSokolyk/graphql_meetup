# frozen_string_literal: true

module Types
  class ListsCollectionType < Base::Object
    I18N_PATH = 'graphql.types.lists_collection_type'

    graphql_name 'ListsCollectionType'

    description I18n.t("#{I18N_PATH}.desc")

    field :nodes,
          [Types::ListType],
          null: true,
          description: I18n.t("#{I18N_PATH}.fields.nodes")
  end
end
