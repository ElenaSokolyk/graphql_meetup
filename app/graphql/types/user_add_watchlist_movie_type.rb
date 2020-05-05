# frozen_string_literal: true

module Types
  class UserAddWatchlistMovieType < Base::Object
    I18N_PATH = 'graphql.types.user_add_watchlist_movie_type'

    graphql_name 'UserAddWatchlistMovieType'
    implements Types::Interfaces::Node

    description I18n.t("#{I18N_PATH}.desc")

    field :id,
          ID,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.id")

    field :title,
          String,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.title")

    field :is_watchlist,
          Boolean,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.is_watchlist")

    def is_watchlist
      true
    end
  end
end
