class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  has_many :posts

  concerning :Presenter do
    def display_name
      email.split('@').first&.humanize
    end
  end

  concerning :Profile do
    included do
      enum gender: { female: 0, male: 1, other: 2 }

      before_create do
        set_unique_username
      end

      before_save do
        self.display_name = "#{self.first_name} #{self.last_name}"
      end

      private

      def set_unique_username
        username_candidate = "#{self.first_name}.#{self.last_name}".parameterize(separator: '')
        username_indexes = User.where("username ~ ?", "\\A#{username_candidate.split('').join('\\.?')}\\.?\\d*\\Z")
          .pluck(:username)
          .map { |username| username.delete(".") }
          .map { |username| username.scan(/\A#{username_candidate}(\d*)\z/) }
          .flatten
          .map(&:to_i)
          .sort
          .last(100_000)

        available_index = nil
        for i in 0...username_indexes.length do
          if username_indexes[i + 1].nil? || username_indexes[i] + 1 != username_indexes[i + 1]
            available_index = username_indexes[i] + 1
            break
          end
        end
        self.username = [self.first_name, self.last_name, available_index].compact.join('.').parameterize(separator: '.')
      end
    end
  end
end
