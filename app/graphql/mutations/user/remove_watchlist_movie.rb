# frozen_string_literal: true

module Mutations
  module User
    class RemoveWatchlistMovie < AuthBase
      type Types::UserRemoveListItemType

      description I18n.t('graphql.mutations.user.remove_watchlist_movie.desc')

      argument :input, Types::Inputs::UserRemoveWatchlistMovieInput, required: true

      def resolve(input:)
        WatchlistMovie.find_by(movie_id: input[:movie_id], user_account: current_user).destroy
      end
    end
  end
end
