# frozen_string_literal: true

module Mutations
  module User
    class CreateList < AuthBase
      type Types::UserCreateListType

      description I18n.t('graphql.mutations.user.create_list.desc')

      argument :input, Types::Inputs::UserCreateListInput, required: true

      def resolve(input:)
        # binding.pry
        List.create(name: input[:name], user_account: current_user)
        current_user
        # match_operation UserAuth::Operation::SignIn.call(
        #   params: input.to_h
        # )
      end
    end
  end
end
