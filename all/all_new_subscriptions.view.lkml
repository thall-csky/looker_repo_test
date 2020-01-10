
view: all_new_subscriptions {
	sql_table_name: DATAVAULT.ALL_NEW_SUBSCRIPTIONS ;;


	dimension: subscription_id {
		type: string
		sql: ${TABLE}."SUBSCRIPTION_ID" ;;
	}
		

	dimension: hub_subscription_key {
		type: string
		sql: ${TABLE}."HUB_SUBSCRIPTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [subscription_id, hub_subscription_key]
	}
		 

}
		 