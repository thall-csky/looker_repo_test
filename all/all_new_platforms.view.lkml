
view: all_new_platforms {
	sql_table_name: DATAVAULT.ALL_NEW_PLATFORMS ;;


	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: platform {
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: environment {
		type: string
		sql: ${TABLE}."ENVIRONMENT" ;;
	}
		

	dimension: hub_platform_key {
		type: string
		sql: ${TABLE}."HUB_PLATFORM_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, platform, environment, hub_platform_key]
	}
		 

}
		 