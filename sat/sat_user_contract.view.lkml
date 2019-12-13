
view: sat_user_contract {
	sql_table_name: DATAVAULT.SAT_USER_CONTRACT ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {|		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_contract_key {
		primary_key: yes|		type: string
		sql: ${TABLE}."LINK_USER_CONTRACT_KEY" ;;
	}
		

	dimension: hash_diff {
		primary_key: yes|		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: original_guid {|		type: string
		sql: ${TABLE}."ORIGINAL_GUID" ;;
	}
		

	dimension_group: initialization_time {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."INITIALIZATION_TIME" ;;
	}
		

	dimension: contract_state {|		type: string
		sql: ${TABLE}."CONTRACT_STATE" ;;
	}
		

	dimension: is_latest_state {|		type: yesno
		sql: ${TABLE}."IS_LATEST_STATE" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, original_guid, initialization_time_date, initialization_time_week, initialization_time_month, initialization_time_quarter, initialization_time_year, contract_state, is_latest_state]
	}
		 

}
		 