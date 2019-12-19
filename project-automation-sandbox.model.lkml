
connection: "snowflake_prod_datavault"

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: hub_book {

	join: HUB_BOOK {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${HUB_BOOK.hub_book_key} = ${LINK_BOOK_ISBN.hub_book_key} ;;
		fields: []
	}
		

	join: HUB_BOOK {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${HUB_BOOK.hub_book_key} = ${LINK_USER_BOOK.hub_book_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_book]
		foreign_key: link_user_book.hub_user_key
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_book_isbn]
		foreign_key: link_book_isbn.hub_isbn_key
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_PRODUCT_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_COURSESECTION_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_book, hub_user, link_user_subscription]
		foreign_key: link_user_subscription.hub_subscription_key
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn]
		foreign_key: link_product_isbn.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_book, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_order, hub_order]
		sql_on: ${HUB_ORDER.hub_order_key} = ${LINK_SUBSCRIPTION_ORDER.hub_order_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_isbn, link_product_isbn, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		
}
		 

explore: hub_contract {

	join: HUB_CONTRACT {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_CONTRACT {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_CONTRACT {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_CONTRACT.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_contract]
		foreign_key: link_user_contract.hub_user_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_subscription_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_product_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_SUBSCRIPTION.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_contract_subscription, hub_subscription, link_subscription_order]
		foreign_key: link_subscription_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_contract, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_contract, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_contract, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_contract, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_institution, hub_institution]
		sql_on: ${HUB_INSTITUTION.hub_institution_key} = ${LINK_COURSESECTION_INSTITUTION.hub_institution_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_product, link_product_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		
}
		 

explore: hub_coursesection {

	join: HUB_COURSESECTION {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_USER_COURSESECTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection.hub_user_key
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_isbn_key
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_coursesection_institution]
		foreign_key: link_coursesection_institution.hub_institution_key
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_PRODUCT_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_INSTITUTION {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_institution]
		sql_on: ${HUB_INSTITUTION.hub_institution_key} = ${LINK_USER_INSTITUTION.hub_institution_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_institution, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_coursesection_isbn, hub_isbn, link_book_isbn]
		foreign_key: link_book_isbn.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_coursesection, hub_user, link_user_subscription]
		foreign_key: link_user_subscription.hub_subscription_key
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_coursesection, hub_user, link_user_product]
		foreign_key: link_user_product.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_order, hub_order]
		sql_on: ${HUB_ORDER.hub_order_key} = ${LINK_SUBSCRIPTION_ORDER.hub_order_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_user, link_user_product, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		
}
		 

explore: hub_el_to_section_mapping {

}
		 

explore: hub_enterpriselicense {

}
		 

explore: hub_institution {

	join: HUB_INSTITUTION {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${HUB_INSTITUTION.hub_institution_key} = ${LINK_COURSESECTION_INSTITUTION.hub_institution_key} ;;
		fields: []
	}
		

	join: HUB_INSTITUTION {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${HUB_INSTITUTION.hub_institution_key} = ${LINK_USER_INSTITUTION.hub_institution_key} ;;
		fields: []
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_institution]
		foreign_key: link_user_institution.hub_user_key
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_coursesection_institution]
		foreign_key: link_coursesection_institution.hub_coursesection_key
	}
		

	join: HUB_COURSESECTION {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_USER_COURSESECTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_institution, hub_user, link_user_subscription]
		foreign_key: link_user_subscription.hub_subscription_key
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_isbn_key
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_institution, hub_user, link_user_product]
		foreign_key: link_user_product.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_subscription, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_PRODUCT_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		
}
		 

explore: hub_isbn {

	join: HUB_ISBN {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_PRODUCT_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_ISBN {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_COURSESECTION_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_book_isbn]
		foreign_key: link_book_isbn.hub_book_key
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_product_isbn]
		foreign_key: link_product_isbn.hub_product_key
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_coursesection_key
	}
		

	join: HUB_COURSESECTION {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_USER_COURSESECTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_BOOK {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book]
		sql_on: ${HUB_BOOK.hub_book_key} = ${LINK_USER_BOOK.hub_book_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_user_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_product_isbn, hub_product, link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_subscription_key
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_coursesection_isbn, hub_coursesection, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_book_isbn, hub_book, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution]
		foreign_key: link_coursesection_institution.hub_institution_key
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_CONTRACT {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract]
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_SUBSCRIPTION.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract]
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_CONTRACT.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		
}
		 

explore: hub_order {

	join: HUB_ORDER {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${HUB_ORDER.hub_order_key} = ${LINK_SUBSCRIPTION_ORDER.hub_order_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${HUB_ORDER.hub_order_key} = ${LINK_USER_ORDER.hub_order_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_order]
		foreign_key: link_user_order.hub_user_key
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_subscription_order]
		foreign_key: link_subscription_order.hub_subscription_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_order, hub_user, link_user_product]
		foreign_key: link_user_product.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_BOOK {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_book, hub_book]
		sql_on: ${HUB_BOOK.hub_book_key} = ${LINK_BOOK_ISBN.hub_book_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_order, hub_user, link_user_product, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_user_order, hub_user, link_user_product, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		
}
		 

explore: hub_platform {

	join: HUB_PLATFORM {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${HUB_PLATFORM.hub_platform_key} = ${LINK_USER_PLATFORM.hub_platform_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_platform]
		foreign_key: link_user_platform.hub_user_key
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_platform, hub_user, link_user_subscription]
		foreign_key: link_user_subscription.hub_subscription_key
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_platform, hub_user, link_user_product]
		foreign_key: link_user_product.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_subscription, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_BOOK {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book]
		sql_on: ${HUB_BOOK.hub_book_key} = ${LINK_BOOK_ISBN.hub_book_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		
}
		 

explore: hub_product {

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_user_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_product_contract]
		foreign_key: link_user_product_contract.hub_contract_key
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_subscription_key
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_SUBSCRIPTION.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_COURSESECTION_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_CONTRACT {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_contract]
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_CONTRACT.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_product_isbn, hub_isbn, link_book_isbn]
		foreign_key: link_book_isbn.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_subscription, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_product_contract, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: link_coursesection_isbn.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		
}
		 

explore: hub_serialnumber {

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_serialnumber_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_user_key
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_subscription_product
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_product_serialnumber, hub_product, link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_subscription_key
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution, hub_institution]
		sql_on: ${HUB_INSTITUTION.hub_institution_key} = ${LINK_COURSESECTION_INSTITUTION.hub_institution_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_user_subscription_product, hub_subscription]
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_ISBN {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_COURSESECTION_ISBN.hub_isbn_key} ;;
		fields: []
	}
		
}
		 

explore: hub_subscription {

	join: HUB_SUBSCRIPTION {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_SUBSCRIPTION_ORDER.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_SUBSCRIPTION.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_SUBSCRIPTION {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${HUB_SUBSCRIPTION.hub_subscription_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_subscription_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_subscription_order]
		foreign_key: link_subscription_order.hub_order_key
	}
		

	join: HUB_USER {
		from: hub_user
		required_joins: [link_user_subscription]
		foreign_key: link_user_subscription.hub_user_key
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_subscription_product]
		foreign_key: link_user_subscription_product.hub_product_key
	}
		

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_user_product_contract
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: link_user_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_order]
		sql_on: ${HUB_ORDER.hub_order_key} = ${LINK_USER_ORDER.hub_order_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user]
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: link_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract]
		sql_on: ${HUB_CONTRACT.hub_contract_key} = ${LINK_USER_CONTRACT.hub_contract_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: link_user_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_USER_PRODUCT.hub_product_key} ;;
		fields: []
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_subscription, hub_user, link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_subscription, hub_user, link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_user_subscription_product, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_subscription, hub_user, link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract_subscription, hub_contract, link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_subscription, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_subscription_order, hub_order, link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_ISBN {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_subscription_product, hub_product, link_product_isbn, hub_isbn]
		sql_on: ${HUB_ISBN.hub_isbn_key} = ${LINK_BOOK_ISBN.hub_isbn_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_subscription, hub_user, link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		
}
		 

explore: hub_user {

	join: HUB_USER {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_COURSESECTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_pii
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_PII.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_SERIALNUMBER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_login
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_LOGIN.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_marketing
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_MARKETING.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: sat_user
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PLATFORM.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_ORDER.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_SUBSCRIPTION_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_INSTITUTION.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: sat_user_internal
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${SAT_USER_INTERNAL.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: pit_user
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${PIT_USER.hub_user_key} ;;
	}
		

	join: HUB_USER {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_BOOK.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_CONTRACT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_USER {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${HUB_USER.hub_user_key} = ${LINK_USER_PRODUCT.hub_user_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: hub_order
		required_joins: [link_user_order]
		foreign_key: link_user_order.hub_order_key
	}
		

	join: LINK_USER_INSTITUTION {
		from: sat_user_institution
		relationship: one_to_many
		required_joins: [link_user_institution]
		sql_on: ${LINK_USER_INSTITUTION.link_user_institution_key} = ${SAT_USER_INSTITUTION.link_user_institution_key} ;;
	}
		

	join: HUB_BOOK {
		from: hub_book
		required_joins: [link_user_book]
		foreign_key: link_user_book.hub_book_key
	}
		

	join: HUB_PLATFORM {
		from: hub_platform
		required_joins: [link_user_platform]
		foreign_key: link_user_platform.hub_platform_key
	}
		

	join: LINK_USER_PRODUCT {
		from: sat_provisioned_product
		relationship: one_to_many
		required_joins: [link_user_product]
		sql_on: ${LINK_USER_PRODUCT.link_user_product_key} = ${SAT_PROVISIONED_PRODUCT.link_user_product_key} ;;
	}
		

	join: HUB_CONTRACT {
		from: hub_contract
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription.hub_contract_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_sap_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SAP_CONTRACT.link_user_contract_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_subscription
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_SUBSCRIPTION.link_user_contract_key} ;;
	}
		

	join: HUB_SUBSCRIPTION {
		from: hub_subscription
		required_joins: [link_user_subscription]
		foreign_key: link_user_subscription.hub_subscription_key
	}
		

	join: LINK_USER_PLATFORM {
		from: sat_common_event
		relationship: one_to_many
		required_joins: [link_user_platform]
		sql_on: ${LINK_USER_PLATFORM.link_user_platform_key} = ${SAT_COMMON_EVENT.link_user_platform_key} ;;
	}
		

	join: HUB_SERIALNUMBER {
		from: hub_serialnumber
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber.hub_serialnumber_key
	}
		

	join: LINK_USER_CONTRACT_SUBSCRIPTION {
		from: sat_sap_subscription
		relationship: one_to_many
		required_joins: [link_user_contract_subscription]
		sql_on: ${LINK_USER_CONTRACT_SUBSCRIPTION.link_user_contract_subscription_key} = ${SAT_SAP_SUBSCRIPTION.link_user_contract_subscription_key} ;;
	}
		

	join: LINK_USER_COURSESECTION {
		from: sat_enrollment
		relationship: one_to_many
		required_joins: [link_user_coursesection]
		sql_on: ${LINK_USER_COURSESECTION.link_user_coursesection_key} = ${SAT_ENROLLMENT.link_user_coursesection_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: hub_product
		required_joins: [link_user_product]
		foreign_key: link_user_product.hub_product_key
	}
		

	join: LINK_USER_PRODUCT_SERIALNUMBER {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber]
		sql_on: ${LINK_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} = ${SAT_USER_PRODUCT_SERIALNUMBER.link_user_product_serialnumber_key} ;;
	}
		

	join: LINK_USER_BOOK {
		from: sat_reader_event
		relationship: one_to_many
		required_joins: [link_user_book]
		sql_on: ${LINK_USER_BOOK.link_user_book_key} = ${SAT_READER_EVENT.link_user_book_key} ;;
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_order
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_ORDER.link_user_contract_key} ;;
	}
		

	join: HUB_INSTITUTION {
		from: hub_institution
		required_joins: [link_user_institution]
		foreign_key: link_user_institution.hub_institution_key
	}
		

	join: LINK_USER_CONTRACT {
		from: sat_user_contract
		relationship: one_to_many
		required_joins: [link_user_contract]
		sql_on: ${LINK_USER_CONTRACT.link_user_contract_key} = ${SAT_USER_CONTRACT.link_user_contract_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: hub_coursesection
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection.hub_coursesection_key
	}
		

	join: LINK_USER_ORDER {
		from: sat_sap_order
		relationship: one_to_many
		required_joins: [link_user_order]
		sql_on: ${LINK_USER_ORDER.link_user_order_key} = ${SAT_SAP_ORDER.link_user_order_key} ;;
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_institution
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_INSTITUTION.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product
		relationship: one_to_many
		required_joins: [link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT.hub_product_key} ;;
	}
		

	join: HUB_PRODUCT_parent {
		from: link_product_relationship
		relationship: one_to_many
		required_joins: [link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT_parent.hub_parent_product_key} = ${LINK_PRODUCT_RELATIONSHIP_parent.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_ORDER {
		from: link_subscription_order
		relationship: one_to_many
		required_joins: [link_user_order, hub_order]
		sql_on: ${HUB_ORDER.hub_order_key} = ${LINK_SUBSCRIPTION_ORDER.hub_order_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: sat_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${SAT_COURSESECTION.hub_coursesection_key} ;;
	}
		

	join: HUB_COURSESECTION_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION_master.hub_coursesection_key_master} = ${LINK_COURSESECTION_COURSESECTION_master.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_SERIALNUMBER {
		from: sat_serialnumber
		relationship: one_to_many
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		sql_on: ${HUB_SERIALNUMBER.hub_serialnumber_key} = ${SAT_SERIALNUMBER.hub_serialnumber_key} ;;
	}
		

	join: HUB_PRODUCT {
		from: link_product_isbn
		relationship: one_to_many
		required_joins: [link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${LINK_PRODUCT_ISBN.hub_product_key} ;;
		fields: []
	}
		

	join: HUB_BOOK {
		from: link_book_isbn
		relationship: one_to_many
		required_joins: [link_user_book, hub_book]
		sql_on: ${HUB_BOOK.hub_book_key} = ${LINK_BOOK_ISBN.hub_book_key} ;;
		fields: []
	}
		

	join: HUB_COURSESECTION {
		from: link_coursesection_isbn
		relationship: one_to_many
		required_joins: [link_user_coursesection, hub_coursesection]
		sql_on: ${HUB_COURSESECTION.hub_coursesection_key} = ${LINK_COURSESECTION_ISBN.hub_coursesection_key} ;;
		fields: []
	}
		

	join: HUB_PRODUCT {
		from: sat_product_attr
		relationship: one_to_many
		required_joins: [link_user_product, hub_product]
		sql_on: ${HUB_PRODUCT.hub_product_key} = ${SAT_PRODUCT_ATTR.hub_product_key} ;;
	}
		

	join: LINK_PRODUCT_RELATIONSHIP {
		from: sat_product_relationship
		relationship: one_to_many
		required_joins: [link_user_product, hub_product, link_product_relationship]
		sql_on: ${LINK_PRODUCT_RELATIONSHIP.link_product_relationship_key} = ${SAT_PRODUCT_RELATIONSHIP.link_product_relationship_key} ;;
	}
		

	join: HUB_ISBN {
		from: hub_isbn
		required_joins: [link_user_product, hub_product, link_product_isbn]
		foreign_key: link_product_isbn.hub_isbn_key
	}
		
}
		 

		 