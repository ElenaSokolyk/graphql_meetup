# frozen_string_literal: true

module Mutations
  module User
    class AddListItem < AuthBase
      type Types::ListType

      description I18n.t('graphql.mutations.user.add_list_item.desc')

      argument :input, Types::Inputs::UserAddListItemInput, required: true

      def resolve(input:)
        lists_movie = ListsMovie.create(list_id: input[:list_id], movie_id: input[:movie_id])
        lists_movie.list
      end
    end
  end
end
