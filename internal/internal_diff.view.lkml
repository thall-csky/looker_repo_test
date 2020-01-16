
view: internal_diff {
	sql_table_name: DATAVAULT.INTERNAL_DIFF ;;


	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}

	dimension: internal {
		type: yesno
		sql: ${TABLE}."INTERNAL" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, hub_user_key, internal]
	}
		 

}
		 