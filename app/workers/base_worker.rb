# frozen_string_literal: true

class BaseWorker
  include Sidekiq::Worker

  def perform(*_)
    raise NotImplemented
  end
end
