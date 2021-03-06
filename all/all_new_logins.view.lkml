
view: all_new_logins {
	sql_table_name: DATAVAULT.ALL_NEW_LOGINS ;;


	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
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
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [user_sso_guid, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year, platform, use_type, success, is_minor, note, client_id, hub_user_key, hash_diff]
	}
		 

}
		 