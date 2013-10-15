module Kounta

	class Site < Kounta::Resource
		property :company_id
		property :name
		property :code

		has_one :product, Kounta::Product, {:company_id => :company_id}, lambda { |klass, item_id| {companies: klass.company_id, sites: klass.id, products: item_id} }
		has_one :category, Kounta::Category, {:company_id => :company_id}, lambda { |klass, item_id| {companies: klass.company_id, sites: klass.id, categories: item_id} }
		has_one :address, Kounta::Address, {:company_id => :company_id}, lambda { |klass, item_id| {companies: klass.company_id, sites: klass.id, addresses: item_id} }
		has_one :order, Kounta::Order, {:company_id => :company_id}, lambda { |klass, item_id| {companies: klass.company_id, sites: klass.id, orders: item_id} }

		has_many :products, Kounta::Product, {:company_id => :company_id}, lambda { |klass| {companies: klass.company_id, sites: klass.id, products: nil} }
		has_many :categories, Kounta::Category, {:company_id => :company_id}, lambda { |klass| {companies: klass.company_id, sites: klass.id, categories: nil} }
		has_many :addresses, Kounta::Address, {:company_id => :company_id}, lambda { |klass| {companies: klass.company_id, sites: klass.id, addresses: nil} }
		has_many :orders, Kounta::Order, {:company_id => :company_id}, lambda { |klass| {companies: klass.company_id, sites: klass.id, orders: nil} }

		def resource_path
			{companies: company_id, sites: id}
		end

	end

end