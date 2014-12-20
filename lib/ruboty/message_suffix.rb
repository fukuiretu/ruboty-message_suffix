require 'ruboty'
require "ruboty/message_suffix/version"

module ExtensionMessage
  def message_suffix_reply(body, options = {})
    raise "Please set the value to the ENV variable 'RUBOTY_MESSAGE_SUFFIX'" unless ENV.has_key?("RUBOTY_MESSAGE_SUFFIX")

    attributes = { body: body << " " << ENV["RUBOTY_MESSAGE_SUFFIX"], from: to, to: from, original: original }.merge(options)
    robot.say(attributes)
  end
end

module Ruboty
  class Message
    include ExtensionMessage
    alias_method :original_reply, :reply
    alias_method :reply, :message_suffix_reply
  end
end
