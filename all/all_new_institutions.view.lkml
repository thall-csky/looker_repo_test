
view: all_new_institutions {
	sql_table_name: DATAVAULT.ALL_NEW_INSTITUTIONS ;;


	dimension: institution_id {
		type: string
		sql: ${TABLE}."INSTITUTION_ID" ;;
	}
		

	dimension: hub_institution_key {
		type: string
		sql: ${TABLE}."HUB_INSTITUTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [institution_id, hub_institution_key]
	}
		 

}
		 