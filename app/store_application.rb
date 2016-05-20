class StoreApplication

	class << self

		def config
			unless @instance
				yield(self)
				puts "loading files.."
				require "rubygems"
				require "pony"
				require_relative "string"
				require_relative "item_container"
				require_relative "item"
				require_relative "virtual_item"
				require_relative "real_item"
				require_relative "antique_item"
				require_relative "cart"
				require_relative "order"
			end
			@instance ||= self
			@instance.freeze # заморозка объектов, чтобы их нельзя было поменять
		end

		attr_accessor :name, :environment

		def admin(&block)
			@admins ||= Admin.new(&block)
		end

	end

	class Admin
		class << self

			def new
				unless @instance
					yield(self)
				end
				@instance ||= self # непонятный момент
				@instance.freeze # но доступ есть к методам и свойствам
			end

			attr_accessor :email, :login

			def send_info_emails_on(day)
				@send_info_emails_on = day
			end

		end

	end

end