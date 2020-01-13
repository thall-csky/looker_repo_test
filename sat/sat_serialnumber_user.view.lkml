
view: sat_serialnumber_user {
	sql_table_name: DATAVAULT.SAT_SERIALNUMBER_USER ;;


	dimension: link_serialnumber_user_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_SERIALNUMBER_USER_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
	}

	dimension: link_serialnumber_user_key {
		type: string
		sql: ${TABLE}."LINK_SERIALNUMBER_USER_KEY" ;;
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

	dimension: is_effective {
		type: yesno
		sql: ${TABLE}."IS_EFFECTIVE" ;;
	}

	dimension_group: effective_from {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EFFECTIVE_FROM" ;;
	}

	dimension_group: effective_to {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EFFECTIVE_TO" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [link_serialnumber_user_key, hash_diff, _ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, is_effective, effective_from_date, effective_from_week, effective_from_month, effective_from_quarter, effective_from_year, effective_to_date, effective_to_week, effective_to_month, effective_to_quarter, effective_to_year]
	}
		 

}
		 