
connection: "snowflake_prod_datavault"

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: hub_book {

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		foreign_key: hub_book_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		foreign_key: hub_book_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_book_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_book_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_book_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_book_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_book, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		
}
		 

explore: hub_contract {

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		foreign_key: hub_contract_key
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_product_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		foreign_key: hub_contract_key
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		foreign_key: hub_contract_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: hub_user_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_contract,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract]
		foreign_key: hub_product_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_subscription_order,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_subscription, link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product, link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_contract, hub_product, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: hub_coursesection {

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		foreign_key: hub_coursesection_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection]
		foreign_key: hub_user_key
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_coursesection_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_coursesection_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_institution, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn, link_book_isbn]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_subscription_order,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_coursesection, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_isbn, link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
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
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		foreign_key: hub_institution_key
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		foreign_key: hub_institution_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution]
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_institution]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_institution, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_coursesection_institution, hub_coursesection, link_coursesection_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_institution, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		
}
		 

explore: hub_isbn {

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		foreign_key: hub_isbn_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		foreign_key: hub_isbn_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_book_isbn]
		foreign_key: hub_book_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn]
		foreign_key: hub_product_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_isbn]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_contract,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_book_isbn, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book]
		foreign_key: hub_user_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_product_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_product_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_subscription_order,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_product_isbn, hub_product, link_user_subscription_product, hub_subscription, link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_coursesection_isbn, hub_coursesection, link_coursesection_institution, hub_institution, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_book_isbn, hub_book, link_user_book, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		
}
		 

explore: hub_order {

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		foreign_key: hub_order_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		foreign_key: hub_order_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_subscription_order,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_subscription_order]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_subscription_order, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_subscription_order, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_subscription_order, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_order, hub_user]
		foreign_key: hub_user_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_subscription_order, hub_subscription, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_user_order, hub_user, link_user_book, hub_book, link_book_isbn]
		foreign_key: hub_isbn_key
	}
		
}
		 

explore: hub_platform {

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		foreign_key: hub_platform_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform]
		foreign_key: hub_user_key
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_platform, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_user_platform, hub_user, link_user_book, hub_book, link_book_isbn]
		foreign_key: hub_isbn_key
	}
		
}
		 

explore: hub_product {

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_parent_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_contract,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product]
		foreign_key: hub_user_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_product_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_product_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_subscription_order,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_book_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_product_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_product_isbn, hub_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_subscription, link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_product_isbn, hub_isbn, link_book_isbn]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_subscription, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_product, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_product_isbn, hub_isbn, link_coursesection_isbn, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		
}
		 

explore: hub_serialnumber {

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_subscription_product]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_product, link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: hub_subscription {

	join: hub_subscription {
		from: ForeignKeyJoin(link_subscription_order,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		foreign_key: hub_subscription_key
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		foreign_key: hub_subscription_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_subscription_order]
		foreign_key: hub_order_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_user_key
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product_contract,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_subscription_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user]
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product, link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_product_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product, link_product_isbn]
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_subscription_order, hub_order, link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_subscription_product, hub_product, link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_contract_subscription, hub_user, link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: hub_user {

	join: hub_user {
		from: ForeignKeyJoin(link_user_coursesection,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_pii,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_login,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_marketing,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_platform,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_order,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_subscription_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_institution,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(sat_user_internal,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(pit_user,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_book,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_contract,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_user {
		from: ForeignKeyJoin(link_user_product,HUB_USER_KEY,hub_user,HUB_USER_KEY).foreignView
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_user_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_order]
		foreign_key: hub_order_key
	}
		

	join: link_user_institution {
		from: ForeignKeyJoin(sat_user_institution,LINK_USER_INSTITUTION_KEY,link_user_institution,LINK_USER_INSTITUTION_KEY).foreignView
		required_joins: [link_user_institution]
		foreign_key: link_user_institution_key
		fields: []
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_user_book,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_book]
		foreign_key: hub_book_key
	}
		

	join: hub_platform {
		from: ForeignKeyJoin(link_user_platform,HUB_PLATFORM_KEY,hub_platform,HUB_PLATFORM_KEY).foreignView
		required_joins: [link_user_platform]
		foreign_key: hub_platform_key
	}
		

	join: link_user_product {
		from: ForeignKeyJoin(sat_provisioned_product,LINK_USER_PRODUCT_KEY,link_user_product,LINK_USER_PRODUCT_KEY).foreignView
		required_joins: [link_user_product]
		foreign_key: link_user_product_key
		fields: []
	}
		

	join: hub_contract {
		from: ForeignKeyJoin(link_user_contract,HUB_CONTRACT_KEY,hub_contract,HUB_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: hub_contract_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_sap_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_subscription,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_subscription {
		from: ForeignKeyJoin(link_user_contract_subscription,HUB_SUBSCRIPTION_KEY,hub_subscription,HUB_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: hub_subscription_key
	}
		

	join: link_user_platform {
		from: ForeignKeyJoin(sat_common_event,LINK_USER_PLATFORM_KEY,link_user_platform,LINK_USER_PLATFORM_KEY).foreignView
		required_joins: [link_user_platform]
		foreign_key: link_user_platform_key
		fields: []
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(link_user_product_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_contract_subscription {
		from: ForeignKeyJoin(sat_sap_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY,link_user_contract_subscription,LINK_USER_CONTRACT_SUBSCRIPTION_KEY).foreignView
		required_joins: [link_user_contract_subscription]
		foreign_key: link_user_contract_subscription_key
		fields: []
	}
		

	join: link_user_coursesection {
		from: ForeignKeyJoin(sat_enrollment,LINK_USER_COURSESECTION_KEY,link_user_coursesection,LINK_USER_COURSESECTION_KEY).foreignView
		required_joins: [link_user_coursesection]
		foreign_key: link_user_coursesection_key
		fields: []
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_user_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product]
		foreign_key: hub_product_key
	}
		

	join: link_user_product_serialnumber {
		from: ForeignKeyJoin(sat_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY,link_user_product_serialnumber,LINK_USER_PRODUCT_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber]
		foreign_key: link_user_product_serialnumber_key
		fields: []
	}
		

	join: link_user_book {
		from: ForeignKeyJoin(sat_reader_event,LINK_USER_BOOK_KEY,link_user_book,LINK_USER_BOOK_KEY).foreignView
		required_joins: [link_user_book]
		foreign_key: link_user_book_key
		fields: []
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_order,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_user_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_institution]
		foreign_key: hub_institution_key
	}
		

	join: link_user_contract {
		from: ForeignKeyJoin(sat_user_contract,LINK_USER_CONTRACT_KEY,link_user_contract,LINK_USER_CONTRACT_KEY).foreignView
		required_joins: [link_user_contract]
		foreign_key: link_user_contract_key
		fields: []
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_user_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_order {
		from: ForeignKeyJoin(sat_sap_order,LINK_USER_ORDER_KEY,link_user_order,LINK_USER_ORDER_KEY).foreignView
		required_joins: [link_user_order]
		foreign_key: link_user_order_key
		fields: []
	}
		

	join: hub_institution {
		from: ForeignKeyJoin(link_coursesection_institution,HUB_INSTITUTION_KEY,hub_institution,HUB_INSTITUTION_KEY).foreignView
		required_joins: [link_user_institution, hub_institution]
		foreign_key: hub_institution_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_product_parent {
		from: ForeignKeyJoin(link_product_relationship,HUB_PARENT_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_parent_product_key
	}
		

	join: hub_order {
		from: ForeignKeyJoin(link_subscription_order,HUB_ORDER_KEY,hub_order,HUB_ORDER_KEY).foreignView
		required_joins: [link_user_order, hub_order]
		foreign_key: hub_order_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(sat_coursesection,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_coursesection_child {
		from: ForeignKeyJoin(link_coursesection_coursesection,HUB_COURSESECTION_KEY_CHILD,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_serialnumber {
		from: ForeignKeyJoin(sat_serialnumber,HUB_SERIALNUMBER_KEY,hub_serialnumber,HUB_SERIALNUMBER_KEY).foreignView
		required_joins: [link_user_product_serialnumber, hub_serialnumber]
		foreign_key: hub_serialnumber_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(link_product_isbn,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: hub_book {
		from: ForeignKeyJoin(link_book_isbn,HUB_BOOK_KEY,hub_book,HUB_BOOK_KEY).foreignView
		required_joins: [link_user_book, hub_book]
		foreign_key: hub_book_key
	}
		

	join: hub_coursesection {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_COURSESECTION_KEY,hub_coursesection,HUB_COURSESECTION_KEY).foreignView
		required_joins: [link_user_coursesection, hub_coursesection]
		foreign_key: hub_coursesection_key
	}
		

	join: hub_product {
		from: ForeignKeyJoin(sat_product_attr,HUB_PRODUCT_KEY,hub_product,HUB_PRODUCT_KEY).foreignView
		required_joins: [link_user_product, hub_product]
		foreign_key: hub_product_key
	}
		

	join: link_product_relationship {
		from: ForeignKeyJoin(sat_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY,link_product_relationship,LINK_PRODUCT_RELATIONSHIP_KEY).foreignView
		required_joins: [link_user_product, hub_product, link_product_relationship]
		foreign_key: link_product_relationship_key
		fields: []
	}
		

	join: hub_isbn {
		from: ForeignKeyJoin(link_coursesection_isbn,HUB_ISBN_KEY,hub_isbn,HUB_ISBN_KEY).foreignView
		required_joins: [link_user_coursesection, hub_coursesection, link_coursesection_isbn]
		foreign_key: hub_isbn_key
	}
		
}
		 

		 