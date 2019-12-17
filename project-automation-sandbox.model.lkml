
connection: "snowflake_prod_datavault"

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: hub_book {

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${hub_book_key} = ${link_book_isbn.hub_book_key} ;;
		fields: []
	}
		

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${hub_book_key} = ${link_user_book.hub_book_key} ;;
		fields: []
	}
		
}
		 

explore: hub_contract {

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract.hub_contract_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${hub_contract_key} = ${link_user_contract_subscription.hub_contract_key} ;;
		fields: []
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${hub_contract_key} = ${link_user_product_contract.hub_contract_key} ;;
		fields: []
	}
		
}
		 

explore: hub_coursesection {

	join: link_coursesection_coursesection_child {
		from: link_coursesection_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_coursesection.hub_coursesection_key_child} ;;
		fields: []
	}
		

	join: link_coursesection_coursesection_master {
		from: link_coursesection_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection.hub_coursesection_key} = ${link_coursesection_coursesection.hub_coursesection_key_master} ;;
		fields: []
	}
		

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_institution.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_coursesection_isbn.hub_coursesection_key} ;;
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${link_user_coursesection.hub_coursesection_key} ;;
		fields: []
	}
		

	join: sat_coursesection {
		from: sat_coursesection
		relationship: one_to_many
		sql_on: ${hub_coursesection_key} = ${sat_coursesection.hub_coursesection_key} ;;
	}
		
}
		 

explore: hub_el_to_section_mapping {

}
		 

explore: hub_enterpriselicense {

}
		 

explore: hub_institution {

	join: link_coursesection_institution {
		from: link_coursesection_institution
		relationship: one_to_many
		sql_on: ${hub_institution_key} = ${link_coursesection_institution.hub_institution_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${hub_institution_key} = ${link_user_institution.hub_institution_key} ;;
		fields: []
	}
		
}
		 

explore: hub_isbn {

	join: link_book_isbn {
		from: link_book_isbn
		relationship: one_to_many
		sql_on: ${hub_isbn_key} = ${link_book_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: link_coursesection_isbn {
		from: link_coursesection_isbn
		relationship: one_to_many
		sql_on: ${hub_isbn_key} = ${link_coursesection_isbn.hub_isbn_key} ;;
		fields: []
	}
		

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${hub_isbn_key} = ${link_product_isbn.hub_isbn_key} ;;
		fields: []
	}
		
}
		 

explore: hub_order {

	join: link_subscription_order {
		from: link_subscription_order
		relationship: one_to_many
		sql_on: ${hub_order_key} = ${link_subscription_order.hub_order_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${hub_order_key} = ${link_user_order.hub_order_key} ;;
		fields: []
	}
		
}
		 

explore: hub_platform {

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${hub_platform_key} = ${link_user_platform.hub_platform_key} ;;
		fields: []
	}
		
}
		 

explore: hub_product {

	join: link_product_isbn {
		from: link_product_isbn
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_product_isbn.hub_product_key} ;;
		fields: []
	}
		

	join: link_product_relationship_parent {
		from: link_product_relationship
		relationship: one_to_many
		sql_on: ${hub_product.hub_product_key} = ${link_product_relationship.hub_parent_product_key} ;;
		fields: []
	}
		

	join: link_product_relationship_child {
		from: link_product_relationship
		relationship: one_to_many
		sql_on: ${hub_product.hub_product_key} = ${link_product_relationship.hub_child_product_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_product.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_product_contract.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_product_serialnumber.hub_product_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${hub_product_key} = ${link_user_subscription_product.hub_product_key} ;;
		fields: []
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
		fields: []
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
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_user_contract_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription.hub_subscription_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${hub_subscription_key} = ${link_user_subscription_product.hub_subscription_key} ;;
		fields: []
	}
		
}
		 

explore: hub_user {

	join: link_user_book {
		from: link_user_book
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_book.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract {
		from: link_user_contract
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_contract_subscription {
		from: link_user_contract_subscription
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_contract_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_coursesection {
		from: link_user_coursesection
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_coursesection.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_institution {
		from: link_user_institution
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_institution.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_order {
		from: link_user_order
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_order.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_platform {
		from: link_user_platform
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_platform.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product {
		from: link_user_product
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_product.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product_contract {
		from: link_user_product_contract
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_product_contract.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_product_serialnumber {
		from: link_user_product_serialnumber
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_product_serialnumber.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription {
		from: link_user_subscription
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription.hub_user_key} ;;
		fields: []
	}
		

	join: link_user_subscription_product {
		from: link_user_subscription_product
		relationship: one_to_many
		sql_on: ${hub_user_key} = ${link_user_subscription_product.hub_user_key} ;;
		fields: []
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
		 

		 