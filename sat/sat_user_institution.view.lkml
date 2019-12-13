
view: sat_user_institution {
	sql_table_name: DATAVAULT.SAT_USER_INSTITUTION ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_institution_key {
		
		type: string
		sql: ${TABLE}."LINK_USER_INSTITUTION_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: active {
		
		type: yesno
		sql: ${TABLE}."ACTIVE" ;;
	}
		

	dimension_group: created_at {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."CREATED_AT" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, link_user_institution_key, hash_diff, active, created_at]
	}
		 

}
		 