
view: sat_user_login {
	sql_table_name: DATAVAULT.SAT_USER_LOGIN ;;


	dimension: hub_user_key_ldts {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_USER_KEY", ' ', ${TABLE}."_LDTS" ;;
	}

	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
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
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, hub_user_key, _rsrc, hash_diff, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year, platform, use_type, success, is_minor, note, client_id]
	}
		 

}
		 