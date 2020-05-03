# frozen_string_literal: true

module Types
  module Inputs
    class UserAddListItemInput < ::Types::Base::InputObject
      I18N_PATH = 'graphql.inputs.user.add_list_item_input'

      graphql_name 'UserAddListItemInput'

      description I18n.t("#{I18N_PATH}.desc")

      argument :list_id,
               Int,
               required: true,
               description: I18n.t("#{I18N_PATH}.args.list_id")

      argument :movie_id,
               Int,
               required: true,
               description: I18n.t("#{I18N_PATH}.args.movie_id")
    end
  end
end
