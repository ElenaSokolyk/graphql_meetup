# frozen_string_literal: true

module Mutations
  module User
    class DeleteList < AuthBase
      type Types::UserDeleteListType

      description I18n.t('graphql.mutations.user.delete_list.desc')

      argument :input, Types::Inputs::DeleteInput, required: true

      def resolve(input:)
        List.find_by(id: input[:id]).destroy
      end
    end
  end
end
