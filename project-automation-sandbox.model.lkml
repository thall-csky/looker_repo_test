
connection: "snowflake_prod_datavault"

include: "all/*.view.lkml"
include: "link/*.view.lkml"
include: "hub/*.view.lkml"
include: "pit/*.view.lkml"
include: "sat/*.view.lkml"


explore: books {
from: hub_book

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${books.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${books.hub_book_key} = ${link_user_book.hub_book_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_book]
		foreign_key: link_user_book.hub_user_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_book_isbn]
		foreign_key: link_book_isbn.hub_isbn_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_book, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_book, hub_user, link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn]
		foreign_key: link_product_isbn.hub_product_key
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_serialnumber_user, hub_serialnumber, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		
}
		 

explore: contracts {
from: hub_contract

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${contracts.hub_contract_key} = ${link_user_contract_subscription.hub_contract_key} ;;
		fields: []
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${contracts.hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${contracts.hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_user_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_serialnumber_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product.hub_product_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_contract_subscription, hub_subscription, link_subscription_order]
		foreign_key: link_subscription_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_product_contract, hub_product, link_serialnumber_product]
		foreign_key: link_serialnumber_product.hub_serialnumber_key
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_serialnumber_product, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		
}
		 

explore: coursesections {
from: hub_coursesection

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${coursesections.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection.hub_user_key
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_isbn_key
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_institution]
		foreign_key: link_coursesection_institution.hub_institution_key
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_institution, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_coursesection, hub_user, link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_serialnumber_user, hub_serialnumber, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
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
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${institutions.hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${institutions.hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_institution]
		foreign_key: link_user_institution.hub_user_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_institution]
		foreign_key: link_coursesection_institution.hub_coursesection_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_institution, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_institution, hub_user, link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_isbn_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_serialnumber_user, hub_serialnumber, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		
}
		 

explore: isbns {
from: hub_isbn

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${isbns.hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${isbns.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${isbns.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_book_isbn]
		foreign_key: link_book_isbn.hub_book_key
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_product_isbn]
		foreign_key: link_product_isbn.hub_product_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_coursesection_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_serialnumber_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_user_book.hub_book_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product.hub_product_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_book_isbn, hub_book, link_user_book]
		foreign_key: link_user_book.hub_user_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_product_isbn, hub_product, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_product_isbn, hub_product, link_serialnumber_product]
		foreign_key: link_serialnumber_product.hub_serialnumber_key
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution]
		foreign_key: link_coursesection_institution.hub_institution_key
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_serialnumber_product, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_user.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_serialnumber_product, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_serialnumber_product, hub_serialnumber, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		
}
		 

explore: orders {
from: hub_order

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${orders.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${orders.hub_order_key} = ${link_user_order.hub_order_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_order]
		foreign_key: link_user_order.hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_subscription_order]
		foreign_key: link_subscription_order.hub_subscription_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_order, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_order, hub_user, link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_subscription, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_order, hub_user, link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_serialnumber_user, hub_serialnumber, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		
}
		 

explore: platforms {
from: hub_platform

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${platforms.hub_platform_key} = ${link_user_platform.hub_platform_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_platform]
		foreign_key: link_user_platform.hub_user_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_platform, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_platform, hub_user, link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book, link_book_isbn]
		foreign_key: link_book_isbn.hub_isbn_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_serialnumber_user, hub_serialnumber, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		
}
		 

explore: products {
from: hub_product

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_serialnumber_product.hub_product_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${products.hub_product_key} = ${link_user_product.hub_product_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_user_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_serialnumber_product]
		foreign_key: link_serialnumber_product.hub_serialnumber_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn]
		sql_on: ${hub_isbn.hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_subscription_product, hub_subscription, link_subscription_order]
		foreign_key: link_subscription_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_product_isbn, hub_isbn, link_book_isbn]
		foreign_key: link_book_isbn.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_product_contract, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_product_contract, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_user, link_user_institution, hub_institution]
		sql_on: ${hub_institution.hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		
}
		 

explore: serialnumbers {
from: hub_serialnumber

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		sql_on: ${serialnumbers.hub_serialnumber_key} = ${link_serialnumber_user.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		sql_on: ${serialnumbers.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		sql_on: ${serialnumbers.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_user_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_serialnumber_product]
		foreign_key: link_serialnumber_product.hub_product_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_user_product.hub_product_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_serialnumber_user, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_serialnumber_user, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_serialnumber_user, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_serialnumber_product, hub_product, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_serialnumber_product, hub_product, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_serialnumber_user, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_serialnumber_product, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_serialnumber_user, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_serialnumber_user, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_contract_subscription, hub_subscription]
		sql_on: ${hub_subscription.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		
}
		 

explore: subscriptions {
from: hub_subscription

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${subscriptions.hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_subscription_order]
		foreign_key: link_subscription_order.hub_order_key
	}
		

	join: hub_user {
		from: hub_user
		required_joins: [link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_user_key
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_product_key
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract]
		sql_on: ${hub_contract.hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_user_order.hub_order_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_serialnumber_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract]
		sql_on: ${hub_contract.hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user]
		sql_on: ${hub_user.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_subscription_product, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_subscription_product, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_user_subscription_product, hub_product, link_serialnumber_product]
		foreign_key: link_serialnumber_product.hub_serialnumber_key
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_subscription_product, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_subscription_product, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_order, link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_serialnumber_product, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		
}
		 

explore: users {
from: hub_user

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_serialnumber_user {
		from: link_serialnumber_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_serialnumber_user.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_pii.hub_user_key} ;;
	}
		

	join: pit_user_new {
		from: pit_user_new
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${pit_user_new.hub_user_key} ;;
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_login.hub_user_key} ;;
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user.hub_user_key} ;;
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${sat_user_internal.hub_user_key} ;;
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${pit_user.hub_user_key} ;;
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${users.hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: hub_order {
		from: hub_order
		required_joins: [link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_institution]
		sql_on: ${link_user_institution.link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
	}
		

	join: hub_book {
		from: hub_book
		required_joins: [link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: sat_serialnumber_user {
		from: sat_serialnumber_user
		relationship: one_to_many
		required_joins: [link_serialnumber_user]
		sql_on: ${link_serialnumber_user.link_serialnumber_user_key} = ${sat_serialnumber_user.link_serialnumber_user_key} ;;
	}
		

	join: hub_platform {
		from: hub_platform
		required_joins: [link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product]
		sql_on: ${link_user_product.link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
	}
		

	join: hub_contract {
		from: hub_contract
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
	}
		

	join: hub_subscription {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_platform]
		sql_on: ${link_user_platform.link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		required_joins: [link_serialnumber_user]
		foreign_key: link_serialnumber_user.hub_serialnumber_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${link_user_contract_subscription.link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_coursesection]
		sql_on: ${link_user_coursesection.link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
	}
		

	join: hub_product {
		from: hub_product
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_book]
		sql_on: ${link_user_book.link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
	}
		

	join: hub_institution {
		from: hub_institution
		required_joins: [link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${link_user_contract.link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_order]
		sql_on: ${link_user_order.link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product.hub_product_key} ;;
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_order]
		sql_on: ${hub_order.hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_book, hub_book]
		sql_on: ${hub_book.hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: sat_serialnumber_consumed {
		from: sat_serialnumber_consumed
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${sat_serialnumber_consumed.hub_serialnumber_key} ;;
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_serialnumber_product {
		from: link_serialnumber_product
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_serialnumber]
		sql_on: ${hub_serialnumber.hub_serialnumber_key} = ${link_serialnumber_product.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${hub_product.hub_product_key} = ${sat_product_attr.hub_product_key} ;;
	}
		

	join: hub_isbn {
		from: hub_isbn
		required_joins: [link_user_coursesection, hub_coursesection, link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_isbn_key
	}
		

	join: sat_serialnumber_product {
		from: sat_serialnumber_product
		relationship: one_to_many
		required_joins: [link_serialnumber_user, hub_serialnumber, link_serialnumber_product]
		sql_on: ${link_serialnumber_product.link_serialnumber_product_key} = ${sat_serialnumber_product.link_serialnumber_product_key} ;;
	}
		
}
		 

		 