
view: sat_el_to_section_mapping {
	sql_table_name: DATAVAULT.SAT_EL_TO_SECTION_MAPPING ;;


	dimension_group: _ldts {|		timeframes: [raw, time, date, week, month, quarter, year]		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_el_to_section_mapping_key {		type: string
		sql: ${TABLE}."HUB_EL_TO_SECTION_MAPPING_KEY" ;;
	}
		

	dimension: hash_diff {		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension_group: rsrc_timestamp {|		timeframes: [raw, time, date, week, month, quarter, year]		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension_group: event_time {|		timeframes: [raw, time, date, week, month, quarter, year]		type: time
		sql: ${TABLE}."EVENT_TIME" ;;
	}
		

	dimension: is_latest_state {		type: yesno
		sql: ${TABLE}."IS_LATEST_STATE" ;;
	}
		

	dimension: deleted {		type: yesno
		sql: ${TABLE}."DELETED" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_el_to_section_mapping_key, hash_diff, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year, is_latest_state, deleted]
	}
		 

}
		 