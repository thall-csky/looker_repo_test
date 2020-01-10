
view: all_new_coursesections {
	sql_table_name: DATAVAULT.ALL_NEW_COURSESECTIONS ;;


	dimension: context_id {
		type: string
		sql: ${TABLE}."CONTEXT_ID" ;;
	}
		

	dimension: platform_environment {
		type: string
		sql: ${TABLE}."PLATFORM_ENVIRONMENT" ;;
	}
		

	dimension: product_platform {
		type: string
		sql: ${TABLE}."PRODUCT_PLATFORM" ;;
	}
		

	dimension: hub_coursesection_key {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [context_id, platform_environment, product_platform, hub_coursesection_key]
	}
		 

}
		 