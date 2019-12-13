
view: sat_common_event {
	sql_table_name: DATAVAULT.SAT_COMMON_EVENT ;;


	dimension_group: _ldts {|		timeframes: [raw, time, date, week, month, quarter, year]		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_platform_key {|		primary_key: yes		type: string
		sql: ${TABLE}."LINK_USER_PLATFORM_KEY" ;;
	}
		

	dimension: hash_diff {|		primary_key: yes		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: event_id {		type: string
		sql: ${TABLE}."EVENT_ID" ;;
	}
		

	dimension: event_category {		type: string
		sql: ${TABLE}."EVENT_CATEGORY" ;;
	}
		

	dimension: event_action {		type: string
		sql: ${TABLE}."EVENT_ACTION" ;;
	}
		

	dimension_group: event_time {|		timeframes: [raw, time, date, week, month, quarter, year]		type: time
		sql: ${TABLE}."EVENT_TIME" ;;
	}
		

	dimension: event_duration {		type: number
		sql: ${TABLE}."EVENT_DURATION" ;;
	}
		

	dimension: event_uri {		type: string
		sql: ${TABLE}."EVENT_URI" ;;
	}
		

	dimension: session_id {		type: string
		sql: ${TABLE}."SESSION_ID" ;;
	}
		

	dimension: host_platform {		type: string
		sql: ${TABLE}."HOST_PLATFORM" ;;
	}
		

	dimension: host_environment {		type: string
		sql: ${TABLE}."HOST_ENVIRONMENT" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, event_id, event_category, event_action, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year, event_duration, event_uri, session_id, host_platform, host_environment]
	}
		 

}
		 