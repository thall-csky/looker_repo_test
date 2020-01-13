
view: sat_user_institution {
	sql_table_name: DATAVAULT.SAT_USER_INSTITUTION ;;


	dimension: link_user_institution_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_USER_INSTITUTION_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
	}

	dimension: link_user_institution_key {
		type: string
		sql: ${TABLE}."LINK_USER_INSTITUTION_KEY" ;;
	}

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}

	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
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
		fields: [link_user_institution_key, hash_diff, _ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, active, created_at_date, created_at_week, created_at_month, created_at_quarter, created_at_year]
	}
		 

}
		 