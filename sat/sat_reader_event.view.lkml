
view: sat_reader_event {
	sql_table_name: DATAVAULT.SAT_READER_EVENT ;;


	dimension: link_user_book_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_USER_BOOK_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
	}

	dimension: link_user_book_key {
		type: string
		sql: ${TABLE}."LINK_USER_BOOK_KEY" ;;
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

	dimension: event_source {
		type: string
		sql: ${TABLE}."EVENT_SOURCE" ;;
	}

	dimension: event_id {
		type: string
		sql: ${TABLE}."EVENT_ID" ;;
	}

	dimension: event_session_id {
		type: string
		sql: ${TABLE}."EVENT_SESSION_ID" ;;
	}

	dimension: event_category {
		type: string
		sql: ${TABLE}."EVENT_CATEGORY" ;;
	}

	dimension: event_action {
		type: string
		sql: ${TABLE}."EVENT_ACTION" ;;
	}

	dimension_group: event_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EVENT_TIME" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [link_user_book_key, hash_diff, _ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, event_source, event_id, event_session_id, event_category, event_action, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year]
	}
		 

}
		 