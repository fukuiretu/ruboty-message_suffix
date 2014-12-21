require 'ruboty'
require "ruboty/message_suffix/version"

module ExtensionMessage
  def message_suffix_reply(body, options = {})
    raise "Please set the value to the ENV variable 'RUBOT_MESSAGE_SUFFIX'" unless ENV.has_key?("RUBOT_MESSAGE_SUFFIX")

    unless body.nil?
      suffixes = ENV["RUBOT_MESSAGE_SUFFIX"].split(",")
      body << " " << suffixes[Random.new.rand(suffixes.size)]
    end

    original_reply(body, options)
  end
end

module Ruboty
  class Message
    include ExtensionMessage
    alias_method :original_reply, :reply
    alias_method :reply, :message_suffix_reply
  end
end
