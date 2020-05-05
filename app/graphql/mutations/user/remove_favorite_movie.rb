# frozen_string_literal: true

module Mutations
  module User
    class RemoveFavoriteMovie < AuthBase
      type Types::UserRemoveListItemType

      description I18n.t('graphql.mutations.user.remove_favorite_movie.desc')

      argument :input, Types::Inputs::UserRemoveFavoriteMovieInput, required: true

      def resolve(input:)
        FavoriteMovie.find_by(movie_id: input[:movie_id], user_account: current_user).destroy
      end
    end
  end
end
