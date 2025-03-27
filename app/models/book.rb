class Book < FrozenRecord::Base
  self.base_path = 'db/frozen'

  def process
    Sentry.with_child_span(op: :process_book) do
      sleep(rand(0.0..2.0)) # TODO: remove this before pushing to GitHub!
    end
  end
end