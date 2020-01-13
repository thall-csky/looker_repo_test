
view: all_new_events_gcs {
	sql_table_name: DATAVAULT.ALL_NEW_EVENTS_GCS ;;


	dimension: event_tags {
		type: string
		sql: ${TABLE}."EVENT_TAGS" ;;
	}
		

	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: platform {
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: environment {
		type: string
		sql: ${TABLE}."ENVIRONMENT" ;;
	}
		

	dimension: user_iam_provider {
		type: string
		sql: ${TABLE}."USER_IAM_PROVIDER" ;;
	}
		

	dimension: link_user_platform_key {
		type: string
		sql: ${TABLE}."LINK_USER_PLATFORM_KEY" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: event_category {
		type: string
		sql: ${TABLE}."EVENT_CATEGORY" ;;
	}
		

	dimension: event_action {
		type: string
		sql: ${TABLE}."EVENT_ACTION" ;;
	}
		

	dimension: event_duration {
		type: string
		sql: ${TABLE}."EVENT_DURATION" ;;
	}
		

	dimension_group: event_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EVENT_TIME" ;;
	}
		

	dimension: event_uri {
		type: string
		sql: ${TABLE}."EVENT_URI" ;;
	}
		

	dimension: visit_id {
		type: number
		sql: ${TABLE}."VISIT_ID" ;;
	}
		

	dimension: event_id {
		type: string
		sql: ${TABLE}."EVENT_ID" ;;
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
		fields: [event_tags, user_sso_guid, platform, environment, user_iam_provider, link_user_platform_key, hub_user_key, event_category, event_action, event_duration, event_time_date, event_time_week, event_time_month, event_time_quarter, event_time_year, event_uri, visit_id, event_id, hash_diff]
	}
		 

}
		 