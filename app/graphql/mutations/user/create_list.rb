# frozen_string_literal: true

module Mutations
  module User
    class CreateList < AuthBase
      type Types::UserAccountType

      description I18n.t('graphql.mutations.user.create_list.desc')

      argument :input, Types::Inputs::UserCreateListInput, required: true

      def resolve(input:)
        List.create(name: input[:name], user_account: current_user)
        current_user
      end
    end
  end
end
