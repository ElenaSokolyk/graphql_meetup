# frozen_string_literal: true

module Mutations
  module User
    class RemoveListItem < AuthBase
      type Types::UserRemoveListItemType

      description I18n.t('graphql.mutations.user.remove_list_item.desc')

      argument :input, Types::Inputs::UserRemoveListItemInput, required: true

      def resolve(input:)
        ListsMovie.find_by(list_id: input[:list_id], movie_id: input[:movie_id]).destroy
      end
    end
  end
end
