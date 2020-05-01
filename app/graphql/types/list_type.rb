# frozen_string_literal: true

module Types
  class ListType < Base::Object
    I18N_PATH = 'graphql.types.list_type'

    graphql_name 'ListType'
    implements Types::Interfaces::Node

    description I18n.t("#{I18N_PATH}.desc")

    field :name,
          String,
          null: false,
          description: I18n.t("#{I18N_PATH}.fields.name")

    field :items,
          [Types::MovieType],
          null: true,
          description: I18n.t("#{I18N_PATH}.fields.items")

    # def exhibits
    #   BatchLoader::GraphQL.for(object.id).batch(default_value: []) do |museum_ids, loader|
    #     Exhibit.where(museum_id: museum_ids).each do |exhibit|
    #       loader.call(exhibit.museum_id) { |memo| memo << exhibit }
    #     end
    #   end
    # end

    def items
      BatchLoader::GraphQL.for(object.id).batch(default_value: []) do |list_ids, loader|
        ListsMovie.where(list_id: list_ids).includes(:movie).each do |list_movie|
          loader.call(list_movie.list_id) { |memo| memo << list_movie.movie }
        end
      end
    end

    # def items
    #   BatchLoader::GraphQL.for(object.id).batch(default_value: []) do |movie_ids, loader|
    #     ::Movie
    #       .where(id: movie_ids)
    #       .each do |movie|
    #         loader.call(movie_image.movie_id) { |memo| memo << movie_image.file }
    #       end
    #   end
    # end
  end
end
