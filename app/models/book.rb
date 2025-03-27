class Book < FrozenRecord::Base
  self.base_path = 'db/frozen'

  def process
    sleep(rand(0.0..2.0)) # TODO: remove this before pushing to GitHub!
  end
end