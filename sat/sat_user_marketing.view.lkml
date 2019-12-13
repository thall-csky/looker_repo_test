
view: sat_user_marketing {
	sql_table_name: DATAVAULT.SAT_USER_MARKETING ;;


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
		primary_key: yes
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
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: opt_out {
		type: yesno
		sql: ${TABLE}."OPT_OUT" ;;
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
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hash_diff, active, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, opt_out, created_at_date, created_at_week, created_at_month, created_at_quarter, created_at_year]
	}
		 

}
		 