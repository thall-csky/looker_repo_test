
connection: "snowflake_prod_datavault"

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: books {
from: hub_book

	join: link_book_isbn {
		from: hub_book
		relationship: one_to_many
		sql_on: ${books.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: link_user_book {
		from: hub_book
		relationship: one_to_many
		sql_on: ${books.hub_book_key} = ${link_user_book.hub_book_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book]
		foreign_key: hub_book.hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_book_isbn]
		foreign_key: hub_book.hub_isbn_key
	}
		

	join: sat_reader_event {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: link_user_coursesection {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
	}
		

	join: sat_user {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
	}
		

	join: link_user_institution {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: hub_book.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: hub_book.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_book, hub_user, link_user_product_contract]
		foreign_key: hub_book.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_book, hub_user, link_user_subscription_product]
		foreign_key: hub_book.hub_subscription_key
	}
		

	join: sat_common_event {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		foreign_key: hub_book.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn]
		foreign_key: hub_book.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_order {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: hub_book.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: hub_book.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
	}
		

	join: sat_product {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		
}
		 

explore: contracts {
from: hub_contract

	join: link_user_contract_subscription {
		from: hub_contract
		relationship: one_to_many
		sql_on: ${contracts.hub_contract_key} = ${link_user_contract_subscription.hub_contract_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_contract
		relationship: one_to_many
		sql_on: ${contracts.hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
	}
		

	join: link_user_contract {
		from: hub_contract
		relationship: one_to_many
		sql_on: ${contracts.hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_contract.hub_user_key
	}
		

	join: sat_sap_contract {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_contract.hub_subscription_key
	}
		

	join: sat_sap_subscription {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract]
		foreign_key: hub_contract.hub_product_key
	}
		

	join: sat_order {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: link_user_coursesection {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: sat_product {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
	}
		

	join: sat_user_login {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
	}
		

	join: link_user_institution {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_product {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product.hub_product_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_contract_subscription, hub_subscription, link_subscription_order]
		foreign_key: hub_contract.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		foreign_key: hub_contract.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		foreign_key: hub_contract.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: sat_common_event {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		foreign_key: hub_contract.hub_serialnumber_key
	}
		

	join: sat_enrollment {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: hub_contract.hub_isbn_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		foreign_key: hub_contract.hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		foreign_key: hub_contract.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		
}
		 

explore: coursesections {
from: hub_coursesection

	join: link_user_coursesection {
		from: hub_coursesection
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_coursesection
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_coursesection
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_coursesection
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection]
		foreign_key: hub_coursesection.hub_user_key
	}
		

	join: sat_enrollment {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_isbn]
		foreign_key: hub_coursesection.hub_isbn_key
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_institution]
		foreign_key: hub_coursesection.hub_institution_key
	}
		

	join: link_user_contract_subscription {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
	}
		

	join: link_user_institution {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: hub_coursesection.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_institution, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		foreign_key: hub_coursesection.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: hub_coursesection.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract]
		foreign_key: hub_coursesection.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		foreign_key: hub_coursesection.hub_subscription_key
	}
		

	join: sat_common_event {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		foreign_key: hub_coursesection.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract]
		foreign_key: hub_coursesection.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: sat_sap_order {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: sat_product {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		
}
		 

explore: el_to_section_mappings {
from: hub_el_to_section_mapping

}
		 

explore: enterpriselicenses {
from: hub_enterpriselicense

}
		 

explore: institutions {
from: hub_institution

	join: link_coursesection_institution {
		from: hub_institution
		relationship: one_to_many
		sql_on: ${institutions.hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
	}
		

	join: link_user_institution {
		from: hub_institution
		relationship: one_to_many
		sql_on: ${institutions.hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
	}
		

	join: sat_user_institution {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution]
		foreign_key: hub_institution.hub_user_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_institution]
		foreign_key: hub_institution.hub_coursesection_key
	}
		

	join: link_user_coursesection {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		

	join: sat_user {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: hub_institution.hub_order_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: hub_institution.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: hub_institution.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_institution, hub_user, link_user_product_contract]
		foreign_key: hub_institution.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_institution, hub_user, link_user_subscription_product]
		foreign_key: hub_institution.hub_subscription_key
	}
		

	join: sat_common_event {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		foreign_key: hub_institution.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn]
		foreign_key: hub_institution.hub_isbn_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product_contract]
		foreign_key: hub_institution.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: sat_sap_order {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: sat_product {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_institution
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		
}
		 

explore: isbns {
from: hub_isbn

	join: link_product_isbn {
		from: hub_isbn
		relationship: one_to_many
		sql_on: ${isbns.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_isbn
		relationship: one_to_many
		sql_on: ${isbns.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_isbn
		relationship: one_to_many
		sql_on: ${isbns.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_book_isbn]
		foreign_key: hub_isbn.hub_book_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn]
		foreign_key: hub_isbn.hub_product_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn]
		foreign_key: hub_isbn.hub_coursesection_key
	}
		

	join: link_user_coursesection {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_product {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
	}
		

	join: link_user_book {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_user_book.hub_book_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_product {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product.hub_product_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book]
		foreign_key: hub_isbn.hub_user_key
	}
		

	join: sat_provisioned_product {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_product_isbn, hub_product, link_user_product_contract]
		foreign_key: hub_isbn.hub_contract_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product]
		foreign_key: hub_isbn.hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: hub_isbn.hub_serialnumber_key
	}
		

	join: sat_enrollment {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: sat_user_product_serialnumber {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution]
		foreign_key: hub_isbn.hub_institution_key
	}
		

	join: link_subscription_order {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_institution {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription, link_subscription_order]
		foreign_key: hub_isbn.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		foreign_key: hub_isbn.hub_platform_key
	}
		

	join: sat_sap_contract {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: sat_sap_subscription {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_order {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: sat_sap_order {
		from: hub_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		
}
		 

explore: orders {
from: hub_order

	join: link_subscription_order {
		from: hub_order
		relationship: one_to_many
		sql_on: ${orders.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: link_user_order {
		from: hub_order
		relationship: one_to_many
		sql_on: ${orders.hub_order_key} = ${link_user_order.hub_order_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order]
		foreign_key: hub_order.hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_subscription_order]
		foreign_key: hub_order.hub_subscription_key
	}
		

	join: sat_sap_order {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_user_coursesection {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
	}
		

	join: link_user_institution {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: sat_user_institution {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: hub_order.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: hub_order.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_order, hub_user, link_user_product_contract]
		foreign_key: hub_order.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		foreign_key: hub_order.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product_contract]
		foreign_key: hub_order.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: hub_order.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: hub_order.hub_coursesection_key
	}
		

	join: link_coursesection_institution {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_product {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_order, hub_user, link_user_book, hub_book, link_book_isbn]
		foreign_key: hub_order.hub_isbn_key
	}
		
}
		 

explore: platforms {
from: hub_platform

	join: link_user_platform {
		from: hub_platform
		relationship: one_to_many
		sql_on: ${platforms.hub_platform_key} = ${link_user_platform.hub_platform_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform]
		foreign_key: hub_platform.hub_user_key
	}
		

	join: sat_common_event {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: link_user_coursesection {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
	}
		

	join: link_user_institution {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: hub_platform.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: hub_platform.hub_book_key
	}
		

	join: sat_provisioned_product {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_platform, hub_user, link_user_product_contract]
		foreign_key: hub_platform.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: hub_platform.hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		foreign_key: hub_platform.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product_contract]
		foreign_key: hub_platform.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: hub_platform.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: hub_platform.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_product {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_platform
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: hub_platform.hub_isbn_key
	}
		
}
		 

explore: products {
from: hub_product

	join: sat_product {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_product {
		from: hub_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_product.hub_product_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_contract]
		foreign_key: hub_product.hub_user_key
	}
		

	join: sat_provisioned_product {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_contract]
		foreign_key: hub_product.hub_contract_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_subscription_product]
		foreign_key: hub_product.hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_product.hub_serialnumber_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_product_isbn]
		foreign_key: hub_product.hub_isbn_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: link_user_coursesection {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
	}
		

	join: sat_user_login {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
	}
		

	join: sat_user {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_institution {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_product_contract, hub_user, link_user_order]
		foreign_key: hub_product.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_product_isbn, hub_isbn, link_book_isbn]
		foreign_key: hub_product.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_product_contract, hub_user, link_user_platform]
		foreign_key: hub_product.hub_platform_key
	}
		

	join: sat_sap_contract {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: sat_sap_subscription {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product_contract, hub_user, link_user_institution]
		foreign_key: hub_product.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: hub_product.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		
}
		 

explore: serialnumbers {
from: hub_serialnumber

	join: sat_serialnumber {
		from: hub_serialnumber
		relationship: one_to_many
		sql_on: ${serialnumbers.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_serialnumber
		relationship: one_to_many
		sql_on: ${serialnumbers.hub_serialnumber_key} = ${link_user_product_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_serialnumber.hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_serialnumber.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: link_user_coursesection {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: sat_product {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: sat_user_login {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
	}
		

	join: link_user_institution {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_contract {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product.hub_product_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: hub_serialnumber.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		foreign_key: hub_serialnumber.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: hub_serialnumber.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_serialnumber, hub_product, link_user_product_contract]
		foreign_key: hub_serialnumber.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract_subscription]
		foreign_key: hub_serialnumber.hub_subscription_key
	}
		

	join: sat_common_event {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: sat_sap_subscription {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn]
		foreign_key: hub_serialnumber.hub_isbn_key
	}
		

	join: sat_reader_event {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: hub_serialnumber.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		foreign_key: hub_serialnumber.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
	}
		
}
		 

explore: subscriptions {
from: hub_subscription

	join: link_subscription_order {
		from: hub_subscription
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_subscription
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_subscription
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_subscription
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_subscription_order]
		foreign_key: hub_subscription.hub_order_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_subscription_product]
		foreign_key: hub_subscription.hub_user_key
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_subscription.hub_contract_key
	}
		

	join: sat_sap_subscription {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product]
		foreign_key: hub_subscription.hub_product_key
	}
		

	join: link_user_coursesection {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: sat_product {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract]
		sql_on: ${hub_contract.hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_user_order.hub_order_key} ;;
	}
		

	join: link_user_institution {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_contract {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract]
		sql_on: ${hub_contract.hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
	}
		

	join: link_user_product {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: sat_user_institution {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_subscription_product, hub_user, link_user_book]
		foreign_key: hub_subscription.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_subscription_product, hub_user, link_user_platform]
		foreign_key: hub_subscription.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: sat_sap_contract {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_subscription_product, hub_user, link_user_product_serialnumber]
		foreign_key: hub_subscription.hub_serialnumber_key
	}
		

	join: sat_enrollment {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_subscription_product, hub_product, link_product_isbn]
		foreign_key: hub_subscription.hub_isbn_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_subscription_product, hub_user, link_user_institution]
		foreign_key: hub_subscription.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection]
		foreign_key: hub_subscription.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_order, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		
}
		 

explore: users {
from: hub_user

	join: link_user_coursesection {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
	}
		

	join: link_user_subscription {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
	}
		

	join: sat_user_pii {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_user_product_serialnumber {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_platform.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_order.hub_user_key} ;;
	}
		

	join: link_user_subscription_product {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
	}
		

	join: link_user_institution {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_institution.hub_user_key} ;;
	}
		

	join: sat_user_internal {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_book.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_contract.hub_user_key} ;;
	}
		

	join: link_user_product {
		from: hub_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_product.hub_user_key} ;;
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_order]
		foreign_key: hub_user.hub_order_key
	}
		

	join: sat_user_institution {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_book]
		foreign_key: hub_user.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_platform]
		foreign_key: hub_user.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_contract]
		foreign_key: hub_user.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_user.hub_subscription_key
	}
		

	join: sat_common_event {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract]
		foreign_key: hub_user.hub_product_key
	}
		

	join: sat_user_product_serialnumber {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber]
		sql_on: ${link_user_product_serialnumber.link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
	}
		

	join: sat_reader_event {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_institution]
		foreign_key: hub_user.hub_institution_key
	}
		

	join: sat_user_contract {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_coursesection]
		foreign_key: hub_user.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
	}
		

	join: sat_product {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
	}
		

	join: sat_coursesection {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		

	join: link_product_isbn {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
	}
		

	join: link_book_isbn {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
	}
		

	join: sat_product_attr {
		from: hub_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: hub_user.hub_isbn_key
	}
		
}
		 

		 