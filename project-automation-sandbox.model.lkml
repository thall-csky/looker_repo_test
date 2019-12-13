
connection: snowflake_prod_datavault

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: hub_book {

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${hub_book_key} = ${link_user_book.hub_book_key} ;;
		
	}
		
}
		 

explore: hub_contract {

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract_subscription.hub_contract_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
		
	}
		
}
		 

explore: hub_coursesection {

	join: link_coursesection_coursesection_child {
		from: link_coursesection_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_coursesection.hub_coursesection_key_child} ;;
		
	}
		

	join: link_coursesection_coursesection_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_coursesection.hub_coursesection_key_master} ;;
		
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_el_to_section_mapping.hub_coursesection_key} ;;
		
	}
		
}
		 

explore: hub_el_to_section_mapping {

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_el_to_section_mapping_key} = ${link_el_to_section_mapping.hub_el_to_section_mapping_key} ;;
		
	}
		

	join: sat_el_to_section_mapping {
		from: sat_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_el_to_section_mapping_key} = ${sat_el_to_section_mapping.hub_el_to_section_mapping_key} ;;
		
	}
		
}
		 

explore: hub_enterpriselicense {

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_enterpriselicense_key} = ${link_el_to_section_mapping.hub_enterpriselicense_key} ;;
		
	}
		

	join: sat_enterpriselicense {
		from: sat_enterpriselicense
		relationship: many_to_many
		sql_on: ${hub_enterpriselicense_key} = ${sat_enterpriselicense.hub_enterpriselicense_key} ;;
		
	}
		
}
		 

explore: hub_institution {

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
		
	}
		
}
		 

explore: hub_isbn {

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		
	}
		
}
		 

explore: hub_order {

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${hub_order_key} = ${link_user_order.hub_order_key} ;;
		
	}
		
}
		 

explore: hub_platform {

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${hub_platform_key} = ${link_user_platform.hub_platform_key} ;;
		
	}
		
}
		 

explore: hub_product {

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_product_relationship_parent {
		from: link_product_relationship
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_product_relationship.hub_parent_product_key} ;;
		
	}
		

	join: link_product_relationship_child {
		from: link_product_relationship
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_product_relationship.hub_child_product_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		
}
		 

explore: hub_serialnumber {

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${hub_serialnumber_key} = ${link_user_product_serialnumber.hub_serialnumber_key} ;;
		
	}
		

	join: sat_serialnumber {
		from: sat_serialnumber
		relationship: one_to_many
		sql_on: ${hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
		
	}
		
}
		 

explore: hub_subscription {

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		
	}
		
}
		 

explore: hub_user {

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: link_book_isbn {

	join: hub_isbn {
		from: hub_isbn
		
		
		foreign_key: hub_isbn_key
	}
		

	join: hub_book {
		from: hub_book
		
		
		foreign_key: hub_book_key
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: many_to_many
		sql_on: ${hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_book_key} = ${link_user_book.hub_book_key} ;;
		
	}
		
}
		 

explore: link_coursesection_coursesection {

	join: hub_coursesection_child {
		from: hub_coursesection
		
		
		foreign_key: hub_coursesection_key_child
	}
		

	join: hub_coursesection_master {
		from: hub_coursesection
		
		
		foreign_key: hub_coursesection_key_master
	}
		
}
		 

explore: link_coursesection_institution {

	join: hub_institution {
		from: hub_institution
		
		
		foreign_key: hub_institution_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		
		
		foreign_key: hub_coursesection_key
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_el_to_section_mapping.hub_coursesection_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
		
	}
		
}
		 

explore: link_coursesection_isbn {

	join: hub_isbn {
		from: hub_isbn
		
		
		foreign_key: hub_isbn_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		
		
		foreign_key: hub_coursesection_key
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: many_to_many
		sql_on: ${hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_el_to_section_mapping.hub_coursesection_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
		
	}
		
}
		 

explore: link_el_to_section_mapping {

	join: hub_el_to_section_mapping {
		from: hub_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_el_to_section_mapping_key} = ${hub_el_to_section_mapping.hub_el_to_section_mapping_key} ;;
		
	}
		

	join: sat_el_to_section_mapping {
		from: sat_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_el_to_section_mapping_key} = ${sat_el_to_section_mapping.hub_el_to_section_mapping_key} ;;
		
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${hub_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
		
	}
		

	join: hub_enterpriselicense {
		from: hub_enterpriselicense
		relationship: many_to_many
		sql_on: ${hub_enterpriselicense_key} = ${hub_enterpriselicense.hub_enterpriselicense_key} ;;
		
	}
		

	join: sat_enterpriselicense {
		from: sat_enterpriselicense
		relationship: many_to_many
		sql_on: ${hub_enterpriselicense_key} = ${sat_enterpriselicense.hub_enterpriselicense_key} ;;
		
	}
		
}
		 

explore: link_product_isbn {

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: hub_isbn {
		from: hub_isbn
		
		
		foreign_key: hub_isbn_key
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: many_to_many
		sql_on: ${hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: many_to_many
		sql_on: ${hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		
	}
		
}
		 

explore: link_product_relationship {

	join: hub_product_parent {
		from: hub_product
		
		
		foreign_key: hub_parent_product_key
	}
		

	join: hub_product_child {
		from: hub_product
		
		
		foreign_key: hub_child_product_key
	}
		

	join: sat_product_relationship {
		from: sat_product_relationship
		relationship: one_to_many
		sql_on: ${link_product_relationship_key} = ${sat_product_relationship.link_product_relationship_key} ;;
		
	}
		
}
		 

explore: link_subscription_order {

	join: hub_subscription {
		from: hub_subscription
		
		
		foreign_key: hub_subscription_key
	}
		

	join: hub_order {
		from: hub_order
		
		
		foreign_key: hub_order_key
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_order_key} = ${link_user_order.hub_order_key} ;;
		
	}
		
}
		 

explore: link_user_book {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_book {
		from: hub_book
		
		
		foreign_key: hub_book_key
	}
		

	join: sat_reader_event {
		from: sat_reader_event
		relationship: one_to_many
		sql_on: ${link_user_book_key} = ${sat_reader_event.link_user_book_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_book_isbn {
		from: link_book_isbn
		relationship: many_to_many
		sql_on: ${hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		
	}
		
}
		 

explore: link_user_contract {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_contract {
		from: hub_contract
		
		
		foreign_key: hub_contract_key
	}
		

	join: sat_order {
		from: sat_order
		relationship: one_to_many
		sql_on: ${link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
		
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: one_to_many
		sql_on: ${link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
		
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: one_to_many
		sql_on: ${link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
		
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: one_to_many
		sql_on: ${link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract_subscription.hub_contract_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
		
	}
		
}
		 

explore: link_user_contract_subscription {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_contract {
		from: hub_contract
		
		
		foreign_key: hub_contract_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		
		
		foreign_key: hub_subscription_key
	}
		

	join: sat_sap_subscription {
		from: sat_sap_subscription
		relationship: one_to_many
		sql_on: ${link_user_contract_subscription_key} = ${sat_sap_subscription.link_user_contract_subscription_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
		
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		
	}
		
}
		 

explore: link_user_coursesection {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_coursesection {
		from: hub_coursesection
		
		
		foreign_key: hub_coursesection_key
	}
		

	join: sat_enrollment {
		from: sat_enrollment
		relationship: one_to_many
		sql_on: ${link_user_coursesection_key} = ${sat_enrollment.link_user_coursesection_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_el_to_section_mapping.hub_coursesection_key} ;;
		
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
		
	}
		
}
		 

explore: link_user_institution {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_institution {
		from: hub_institution
		
		
		foreign_key: hub_institution_key
	}
		

	join: sat_user_institution {
		from: sat_user_institution
		relationship: one_to_many
		sql_on: ${link_user_institution_key} = ${sat_user_institution.link_user_institution_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: many_to_many
		sql_on: ${hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
		
	}
		
}
		 

explore: link_user_order {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_order {
		from: hub_order
		
		
		foreign_key: hub_order_key
	}
		

	join: sat_sap_order {
		from: sat_sap_order
		relationship: one_to_many
		sql_on: ${link_user_order_key} = ${sat_sap_order.link_user_order_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: many_to_many
		sql_on: ${hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		
	}
		
}
		 

explore: link_user_platform {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_platform {
		from: hub_platform
		
		
		foreign_key: hub_platform_key
	}
		

	join: sat_common_event {
		from: sat_common_event
		relationship: one_to_many
		sql_on: ${link_user_platform_key} = ${sat_common_event.link_user_platform_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: link_user_product {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: sat_provisioned_product {
		from: sat_provisioned_product
		relationship: one_to_many
		sql_on: ${link_user_product_key} = ${sat_provisioned_product.link_user_product_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		
}
		 

explore: link_user_product_contract {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: hub_contract {
		from: hub_contract
		
		
		foreign_key: hub_contract_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract_subscription.hub_contract_key} ;;
		
	}
		
}
		 

explore: link_user_product_serialnumber {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: hub_serialnumber {
		from: hub_serialnumber
		
		
		foreign_key: hub_serialnumber_key
	}
		

	join: sat_user_product_serialnumber {
		from: sat_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${link_user_product_serialnumber_key} = ${sat_user_product_serialnumber.link_user_product_serialnumber_key} ;;
		
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		

	join: sat_serialnumber {
		from: sat_serialnumber
		relationship: many_to_many
		sql_on: ${hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
		
	}
		
}
		 

explore: link_user_subscription {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		
		
		foreign_key: hub_subscription_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		
	}
		
}
		 

explore: link_user_subscription_product {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: hub_subscription {
		from: hub_subscription
		
		
		foreign_key: hub_subscription_key
	}
		

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		

	join: link_subscription_order {
		from: link_subscription_order
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_subscription_order.hub_subscription_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		
}
		 

explore: pit_user {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: sat_common_event {

	join: link_user_platform {
		from: link_user_platform
		
		
		foreign_key: link_user_platform_key
	}
		
}
		 

explore: sat_coursesection {

	join: hub_coursesection {
		from: hub_coursesection
		
		
		foreign_key: hub_coursesection_key
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_el_to_section_mapping.hub_coursesection_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		
	}
		
}
		 

explore: sat_el_to_section_mapping {

	join: hub_el_to_section_mapping {
		from: hub_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_el_to_section_mapping_key} = ${hub_el_to_section_mapping.hub_el_to_section_mapping_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_el_to_section_mapping_key} = ${link_el_to_section_mapping.hub_el_to_section_mapping_key} ;;
		
	}
		
}
		 

explore: sat_enrollment {

	join: link_user_coursesection {
		from: link_user_coursesection
		
		
		foreign_key: link_user_coursesection_key
	}
		
}
		 

explore: sat_enterpriselicense {

	join: hub_enterpriselicense {
		from: hub_enterpriselicense
		relationship: many_to_many
		sql_on: ${hub_enterpriselicense_key} = ${hub_enterpriselicense.hub_enterpriselicense_key} ;;
		
	}
		

	join: link_el_to_section_mapping {
		from: link_el_to_section_mapping
		relationship: many_to_many
		sql_on: ${hub_enterpriselicense_key} = ${link_el_to_section_mapping.hub_enterpriselicense_key} ;;
		
	}
		
}
		 

explore: sat_order {

	join: link_user_contract {
		from: link_user_contract
		
		
		foreign_key: link_user_contract_key
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
		
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
		
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
		
	}
		
}
		 

explore: sat_product {

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product_attr {
		from: sat_product_attr
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product_attr.hub_product_key} ;;
		
	}
		
}
		 

explore: sat_product_attr {

	join: hub_product {
		from: hub_product
		
		
		foreign_key: hub_product_key
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		
	}
		

	join: sat_product {
		from: sat_product
		relationship: many_to_many
		sql_on: ${hub_product_key} = ${sat_product.hub_product_key} ;;
		
	}
		
}
		 

explore: sat_product_relationship {

	join: link_product_relationship {
		from: link_product_relationship
		
		
		foreign_key: link_product_relationship_key
	}
		
}
		 

explore: sat_provisioned_product {

	join: link_user_product {
		from: link_user_product
		
		
		foreign_key: link_user_product_key
	}
		
}
		 

explore: sat_reader_event {

	join: link_user_book {
		from: link_user_book
		
		
		foreign_key: link_user_book_key
	}
		
}
		 

explore: sat_sap_contract {

	join: link_user_contract {
		from: link_user_contract
		
		
		foreign_key: link_user_contract_key
	}
		

	join: sat_order {
		from: sat_order
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
		
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
		
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
		
	}
		
}
		 

explore: sat_sap_order {

	join: link_user_order {
		from: link_user_order
		
		
		foreign_key: link_user_order_key
	}
		
}
		 

explore: sat_sap_subscription {

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		
		
		foreign_key: link_user_contract_subscription_key
	}
		
}
		 

explore: sat_serialnumber {

	join: hub_serialnumber {
		from: hub_serialnumber
		
		
		foreign_key: hub_serialnumber_key
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_serialnumber_key} = ${link_user_product_serialnumber.hub_serialnumber_key} ;;
		
	}
		
}
		 

explore: sat_subscription {

	join: link_user_contract {
		from: link_user_contract
		
		
		foreign_key: link_user_contract_key
	}
		

	join: sat_order {
		from: sat_order
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
		
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
		
	}
		

	join: sat_user_contract {
		from: sat_user_contract
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_user_contract.link_user_contract_key} ;;
		
	}
		
}
		 

explore: sat_user {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: sat_user_contract {

	join: link_user_contract {
		from: link_user_contract
		
		
		foreign_key: link_user_contract_key
	}
		

	join: sat_order {
		from: sat_order
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_order.link_user_contract_key} ;;
		
	}
		

	join: sat_sap_contract {
		from: sat_sap_contract
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_sap_contract.link_user_contract_key} ;;
		
	}
		

	join: sat_subscription {
		from: sat_subscription
		relationship: many_to_many
		sql_on: ${link_user_contract_key} = ${sat_subscription.link_user_contract_key} ;;
		
	}
		
}
		 

explore: sat_user_institution {

	join: link_user_institution {
		from: link_user_institution
		
		
		foreign_key: link_user_institution_key
	}
		
}
		 

explore: sat_user_internal {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: sat_user_login {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: sat_user_marketing {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_pii {
		from: sat_user_pii
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_pii.hub_user_key} ;;
		
	}
		
}
		 

explore: sat_user_pii {

	join: hub_user {
		from: hub_user
		
		
		foreign_key: hub_user_key
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		
	}
		

	join: pit_user {
		from: pit_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${pit_user.hub_user_key} ;;
		
	}
		

	join: sat_user {
		from: sat_user
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user.hub_user_key} ;;
		
	}
		

	join: sat_user_internal {
		from: sat_user_internal
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_internal.hub_user_key} ;;
		
	}
		

	join: sat_user_login {
		from: sat_user_login
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_login.hub_user_key} ;;
		
	}
		

	join: sat_user_marketing {
		from: sat_user_marketing
		relationship: many_to_many
		sql_on: ${hub_user_key} = ${sat_user_marketing.hub_user_key} ;;
		
	}
		
}
		 

explore: sat_user_product_serialnumber {

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		
		
		foreign_key: link_user_product_serialnumber_key
	}
		
}
		 

		 