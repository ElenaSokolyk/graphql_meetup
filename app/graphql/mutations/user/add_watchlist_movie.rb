# frozen_string_literal: true

module Mutations
  module User
    class AddWatchlistMovie < AuthBase
      type Types::MovieType

      description I18n.t('graphql.mutations.user.add_watchlist_movie.desc')

      argument :input, Types::Inputs::UserAddWatchlistMovieInput, required: true

      def resolve(input:)
        watchlist_movie = WatchlistMovie.create(movie_id: input[:movie_id], user_account: current_user)
        watchlist_movie.movie
      end
    end
  end
end
