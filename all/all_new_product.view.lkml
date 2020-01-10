
view: all_new_product {
	sql_table_name: DATAVAULT.ALL_NEW_PRODUCT ;;


	dimension: pid {
		type: string
		sql: ${TABLE}."PID" ;;
	}
		

	dimension: hub_product_key {
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [pid, hub_product_key]
	}
		 

}
		 