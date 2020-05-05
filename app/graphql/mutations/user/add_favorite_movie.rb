# frozen_string_literal: true

module Mutations
  module User
    class AddFavoriteMovie < AuthBase
      type Types::UserAddFavoriteMovieType

      description I18n.t('graphql.mutations.user.add_favorite_movie.desc')

      argument :input, Types::Inputs::UserAddFavoriteMovieInput, required: true

      def resolve(input:)
        favorite_movie = FavoriteMovie.create(movie_id: input[:movie_id], user_account: current_user)
        favorite_movie.movie
      end
    end
  end
end
