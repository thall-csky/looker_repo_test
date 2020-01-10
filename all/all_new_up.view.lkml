
view: all_new_up {
	sql_table_name: DATAVAULT.ALL_NEW_UP ;;


	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: user_environment {
		type: string
		sql: ${TABLE}."USER_ENVIRONMENT" ;;
	}
		

	dimension: product_id {
		type: string
		sql: ${TABLE}."PRODUCT_ID" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hub_product_key {
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY" ;;
	}
		

	dimension: link_user_product_key {
		type: string
		sql: ${TABLE}."LINK_USER_PRODUCT_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [user_sso_guid, user_environment, product_id, hub_user_key, hub_product_key, link_user_product_key]
	}
		 

}
		 