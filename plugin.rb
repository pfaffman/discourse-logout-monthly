# frozen_string_literal: true

# name: discourse-logout-monthly
# about: Log out all users once a month
# version: 0.1
# author: Jay Pfaffman
# url: https://github.com/pfaffman/discourse-logout-monthly

enabled_site_setting :logout_monthly_enabled

after_initialize do

  module ::LogoutMonthly
    PLUGIN_NAME = 'logout-monthly'

    # def self.current_month
    #   Time.now.month
    # end
  end

  [
    '../../discourse-logout-monthly/app/jobs/logout_monthly.rb'
  ].each { |path| load File.expand_path(path, __FILE__) }
end
