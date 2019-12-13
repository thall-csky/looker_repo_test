
view: sat_reader_event {
	sql_table_name: DATAVAULT.SAT_READER_EVENT ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_book_key {
		
		type: string
		sql: ${TABLE}."LINK_USER_BOOK_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
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
		fields: [_ldts, _rsrc, link_user_book_key, hash_diff, event_source, event_id, event_session_id, event_category, event_action, event_time]
	}
		 

}
		 