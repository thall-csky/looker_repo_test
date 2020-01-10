
view: all_new_user_orders {
	sql_table_name: DATAVAULT.ALL_NEW_USER_ORDERS ;;


	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: iam_provider {
		type: string
		sql: ${TABLE}."IAM_PROVIDER" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hub_order_key {
		type: string
		sql: ${TABLE}."HUB_ORDER_KEY" ;;
	}
		

	dimension: link_user_order_key {
		type: string
		sql: ${TABLE}."LINK_USER_ORDER_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [user_sso_guid, iam_provider, hub_user_key, hub_order_key, link_user_order_key]
	}
		 

}
		 