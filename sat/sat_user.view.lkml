
view: sat_user {
	sql_table_name: DATAVAULT.SAT_USER ;;


	dimension: hub_user_key__ldts {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_USER_KEY", ' ', ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: active {
		type: yesno
		sql: ${TABLE}."ACTIVE" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: created_by {
		type: string
		sql: ${TABLE}."CREATED_BY" ;;
	}
		

	dimension: src_environment {
		type: string
		sql: ${TABLE}."SRC_ENVIRONMENT" ;;
	}
		

	dimension: src_platform {
		type: string
		sql: ${TABLE}."SRC_PLATFORM" ;;
	}
		

	dimension: account_type {
		type: string
		sql: ${TABLE}."ACCOUNT_TYPE" ;;
	}
		

	dimension: linked_guid {
		type: string
		sql: ${TABLE}."LINKED_GUID" ;;
	}
		

	dimension: instructor {
		type: yesno
		sql: ${TABLE}."INSTRUCTOR" ;;
	}
		

	dimension: k12 {
		type: yesno
		sql: ${TABLE}."K12" ;;
	}
		

	dimension: cengage_crowd_id {
		type: string
		sql: ${TABLE}."CENGAGE_CROWD_ID" ;;
	}
		

	dimension: note {
		type: string
		sql: ${TABLE}."NOTE" ;;
	}
		

	dimension: country {
		type: string
		sql: ${TABLE}."COUNTRY" ;;
	}
		

	dimension: region {
		type: string
		sql: ${TABLE}."REGION" ;;
	}
		

	dimension: user_timezone {
		type: string
		sql: ${TABLE}."USER_TIMEZONE" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, hash_diff, active, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, created_by, src_environment, src_platform, account_type, linked_guid, instructor, k12, cengage_crowd_id, note, country, region, user_timezone]
	}
		 

}
		 