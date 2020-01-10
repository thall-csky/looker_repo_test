
view: all_new_events {
	sql_table_name: DATAVAULT.ALL_NEW_EVENTS ;;


	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: u_platform {
		type: string
		sql: ${TABLE}."U_PLATFORM" ;;
	}
		

	dimension: u_environment {
		type: string
		sql: ${TABLE}."U_ENVIRONMENT" ;;
	}
		

	dimension: user_iam_provider {
		type: string
		sql: ${TABLE}."USER_IAM_PROVIDER" ;;
	}
		

	dimension: p_platform {
		type: string
		sql: ${TABLE}."P_PLATFORM" ;;
	}
		

	dimension: p_environment {
		type: string
		sql: ${TABLE}."P_ENVIRONMENT" ;;
	}
		

	dimension: link_user_platform_key {
		type: string
		sql: ${TABLE}."LINK_USER_PLATFORM_KEY" ;;
	}
		

	dimension: event_id {
		type: string
		sql: ${TABLE}."EVENT_ID" ;;
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
		

	dimension: event_duration {
		type: number
		sql: ${TABLE}."EVENT_DURATION" ;;
	}
		

	dimension: event_uri {
		type: string
		sql: ${TABLE}."EVENT_URI" ;;
	}
		

	dimension: session_id {
		type: string
		sql: ${TABLE}."SESSION_ID" ;;
	}
		

	dimension: host_platform {
		type: string
		sql: ${TABLE}."HOST_PLATFORM" ;;
	}
		

	dimension: host_environment {
		type: string
		sql: ${TABLE}."HOST_ENVIRONMENT" ;;
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
		fields: [user_sso_guid, u_platform, u_environment, user_iam_provider, p_platform, p_environment, link_user_platform_key, event_id, event_category, event_action, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year, event_duration, event_uri, session_id, host_platform, host_environment, hash_diff]
	}
		 

}
		 