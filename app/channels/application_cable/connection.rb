# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    #identified_by :current_user
    #
    #def connect
    #  self.current_user = get_or_set_user_id
    #  #$redis.set("#{self.current_user}")
    #end
    #
    #def get_or_set_user_id
    #  cookies.signed[:user_id] ? cookies.signed[:user_id] : cookies.signed[:user_id] = SecureRandom.uuid
    #end
  end
end
