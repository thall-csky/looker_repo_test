
connection: "snowflake_prod_datavault"

include: "link/*.view.lkml"
include: "sat/*.view.lkml"
include: "pit/*.view.lkml"
include: "hub/*.view.lkml"


explore: hub_book {

}
		 

explore: hub_contract {

}
		 

explore: hub_coursesection {

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

}
		 

explore: hub_isbn {

}
		 

explore: hub_order {

}
		 

explore: hub_platform {

}
		 

explore: hub_product {

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

	join: sat_serialnumber {
		from: sat_serialnumber
		relationship: one_to_many
		sql_on: ${hub_serialnumber_key} = ${sat_serialnumber.hub_serialnumber_key} ;;
	}
		
}
		 

explore: hub_subscription {

}
		 

explore: hub_user {

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
		 

explore: pit_user {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		
}
		 

explore: sat_common_event {

}
		 

explore: sat_coursesection {

	join: hub_coursesection {
		from: hub_coursesection
		foreign_key: hub_coursesection_key
	}
		
}
		 

explore: sat_el_to_section_mapping {

}
		 

explore: sat_enrollment {

}
		 

explore: sat_enterpriselicense {

}
		 

explore: sat_order {

}
		 

explore: sat_product {

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		
}
		 

explore: sat_product_attr {

	join: hub_product {
		from: hub_product
		foreign_key: hub_product_key
	}
		
}
		 

explore: sat_product_relationship {

}
		 

explore: sat_provisioned_product {

}
		 

explore: sat_reader_event {

}
		 

explore: sat_sap_contract {

}
		 

explore: sat_sap_order {

}
		 

explore: sat_sap_subscription {

}
		 

explore: sat_serialnumber {

	join: hub_serialnumber {
		from: hub_serialnumber
		foreign_key: hub_serialnumber_key
	}
		
}
		 

explore: sat_subscription {

}
		 

explore: sat_user {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		
}
		 

explore: sat_user_contract {

}
		 

explore: sat_user_institution {

}
		 

explore: sat_user_internal {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		
}
		 

explore: sat_user_login {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		
}
		 

explore: sat_user_marketing {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		
}
		 

explore: sat_user_pii {

	join: hub_user {
		from: hub_user
		foreign_key: hub_user_key
	}
		
}
		 

explore: sat_user_product_serialnumber {

}
		 

		 