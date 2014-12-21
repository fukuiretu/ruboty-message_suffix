Ruboty::MessageSuffix
==========

## Overview
This Extension is for [Ruboty](https://github.com/r7kamura/ruboty).

Grant any word to suffix of message.



## Usage

### Basic
```bash
$ export RUBOT_MESSAGE_SUFFIX='どすぅ'
$ bundle exec ruboty
> ruboty ping
pong どすぅ

```

### Randomly extracted from multiple
```bash
$ export RUBOT_MESSAGE_SUFFIX='っしょ,じゃけぇ,ばってん'
$ bundle exec ruboty
> ruboty ping
pong じゃけぇ
> ruboty ping
pong っしょ
> ruboty ping
pong ばってん
```

## Demo

Coming soon...



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-message_suffix'
```

And then execute:

$ bundle

Or install it yourself as:

$ gem install ruboty-message_suffix



### TODO
* spec
