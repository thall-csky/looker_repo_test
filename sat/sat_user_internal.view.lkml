
view: sat_user_internal {
	sql_table_name: DATAVAULT.SAT_USER_INTERNAL ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_user_key {
		
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: active {
		
		type: yesno
		sql: ${TABLE}."ACTIVE" ;;
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
		fields: [_ldts, _rsrc, hub_user_key, hash_diff, active, internal]
	}
		 

}
		 