
connection: "snowflake_prod_datavault"

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: hub_book {

	join: hub_book {
		from: hub_book
		foreign_key: hub_book_key
	}
		

	join: hub_book {
		from: hub_book
		foreign_key: hub_book_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_book_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_book_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_book_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_book, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_book, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_book, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_book, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_book, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_book, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_book, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_book, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_book, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		
}
		 

explore: hub_contract {

	join: hub_contract {
		from: hub_contract
		foreign_key: hub_contract_key
	}
		

	join: hub_contract {
		from: hub_contract
		foreign_key: hub_contract_key
	}
		

	join: hub_contract {
		from: hub_contract
		foreign_key: hub_contract_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract]
		foreign_key: hub_user_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract]
		foreign_key: hub_product_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_contract_subscription, hub_subscription, link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_contract, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_contract, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_contract, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_product_contract, hub_product, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_product_contract, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_contract, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_contract, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_contract, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_contract, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_contract, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_contract, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_contract, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: hub_coursesection {

	join: hub_coursesection {
		from: hub_coursesection
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		foreign_key: hub_coursesection_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection]
		foreign_key: hub_user_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_coursesection_institution, hub_institution, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_coursesection_isbn, hub_isbn, link_book_isbn]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_coursesection, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_coursesection, hub_user, link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_coursesection, hub_user, link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		
}
		 

explore: hub_el_to_section_mapping {

}
		 

explore: hub_enterpriselicense {

}
		 

explore: hub_institution {

	join: hub_institution {
		from: hub_institution
		foreign_key: hub_institution_key
	}
		

	join: hub_institution {
		from: hub_institution
		foreign_key: hub_institution_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution]
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_institution]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_institution, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_coursesection_institution, hub_coursesection, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_institution, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		
}
		 

explore: hub_isbn {

	join: hub_isbn {
		from: hub_isbn
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		foreign_key: hub_isbn_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_book_isbn]
		foreign_key: hub_book_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn]
		foreign_key: hub_product_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_book_isbn, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book]
		foreign_key: hub_user_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_product_isbn, hub_product, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_product_isbn, hub_product, link_user_product_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_product_isbn, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_coursesection_isbn, hub_coursesection, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_book_isbn, hub_book, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription, link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		
}
		 

explore: hub_order {

	join: hub_order {
		from: hub_order
		foreign_key: hub_order_key
	}
		

	join: hub_order {
		from: hub_order
		foreign_key: hub_order_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_subscription_order]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_subscription_order, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_subscription_order, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_subscription_order, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_order, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_subscription_order, hub_subscription, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_order, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_order, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_order, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_order, hub_user, link_user_book, hub_book, link_book_isbn]
		foreign_key: hub_isbn_key
	}
		
}
		 

explore: hub_platform {

	join: hub_platform {
		from: hub_platform
		foreign_key: hub_platform_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform]
		foreign_key: hub_user_key
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_platform, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_platform, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book, link_book_isbn]
		foreign_key: hub_isbn_key
	}
		
}
		 

explore: hub_product {

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		foreign_key: hub_parent_product_key
	}
		

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product]
		foreign_key: hub_user_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_product_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_product_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_subscription_product, hub_subscription, link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_product, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_product_isbn, hub_isbn, link_book_isbn]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_product, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_product, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_subscription_product, hub_subscription, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_product, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_product, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_product, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		
}
		 

explore: hub_serialnumber {

	join: hub_serialnumber {
		from: hub_serialnumber
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_product_serialnumber, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_product_serialnumber, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_product_serialnumber, hub_user, link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: hub_subscription {

	join: hub_subscription {
		from: hub_subscription
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		foreign_key: hub_subscription_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_user_key
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_subscription_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_subscription_product, hub_product, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_subscription_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_subscription_product, hub_product, link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_subscription_order, hub_order, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_contract_subscription, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: hub_user {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		required_joins: [link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: link_user_product
		required_joins: [link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: link_user_platform
		required_joins: [link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		required_joins: [link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: link_user_contract
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: link_user_order
		required_joins: [link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: hub_product
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: hub_coursesection
		required_joins: [link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: link_product_relationship
		required_joins: [link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_coursesection, hub_coursesection, link_coursesection_isbn]
		foreign_key: hub_isbn_key
	}
		
}
		 

		 