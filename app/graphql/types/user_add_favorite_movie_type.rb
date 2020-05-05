# frozen_string_literal: true

module Types
  class UserAddFavoriteMovieType < Base::Object
    I18N_PATH = 'graphql.types.user_add_favorite_movie_type'

    graphql_name 'UserAddFavoriteMovieType'
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

    field :is_favorite,
          Boolean,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.is_favorite")

    def is_favorite
      true
    end
  end
end
