# frozen_string_literal: true

module Mutations
  class AuthBase < BaseMutation
    def ready?(**_kwargs)
      raise JWTSessions::Errors::Unauthorized unless current_user

      true
    end
  end
end
