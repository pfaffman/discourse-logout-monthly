# frozen_string_literal: true

module Jobs
  class LogoutMonthly < ::Jobs::Scheduled
    every 1.month

    def execute(args)
      @verbose = args[:verbose]

        puts "Logging out all users" if @verbose

        UserAuthToken.destroy_all
    end
  end
end
