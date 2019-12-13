
view: sat_user_login {
	sql_table_name: DATAVAULT.SAT_USER_LOGIN ;;


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
		

	dimension_group: event_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EVENT_TIME" ;;
	}
		

	dimension: platform {
		
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: use_type {
		
		type: string
		sql: ${TABLE}."USE_TYPE" ;;
	}
		

	dimension: success {
		
		type: yesno
		sql: ${TABLE}."SUCCESS" ;;
	}
		

	dimension: is_minor {
		
		type: yesno
		sql: ${TABLE}."IS_MINOR" ;;
	}
		

	dimension: note {
		
		type: string
		sql: ${TABLE}."NOTE" ;;
	}
		

	dimension: client_id {
		
		type: string
		sql: ${TABLE}."CLIENT_ID" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, hub_user_key, hash_diff, event_time, platform, use_type, success, is_minor, note, client_id]
	}
		 

}
		 