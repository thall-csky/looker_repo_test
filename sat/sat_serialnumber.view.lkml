
view: sat_serialnumber {
	sql_table_name: DATAVAULT.SAT_SERIALNUMBER ;;


	dimension: hub_serialnumber_key__ldts {
		primary_key: yes
		type: string
		sql: ${TABLE}."_LDTS", ' ', ${TABLE}."HUB_SERIALNUMBER_KEY" ;;
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
		

	dimension: hub_serialnumber_key {
		type: string
		sql: ${TABLE}."HUB_SERIALNUMBER_KEY" ;;
	}
		

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: is_latest_state {
		type: yesno
		sql: ${TABLE}."IS_LATEST_STATE" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: src_platform {
		type: string
		sql: ${TABLE}."SRC_PLATFORM" ;;
	}
		

	dimension: src_environment {
		type: string
		sql: ${TABLE}."SRC_ENVIRONMENT" ;;
	}
		

	dimension: subscription_length_in_days {
		type: number
		sql: ${TABLE}."SUBSCRIPTION_LENGTH_IN_DAYS" ;;
	}
		

	dimension: platform {
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: code_type {
		type: string
		sql: ${TABLE}."CODE_TYPE" ;;
	}
		

	dimension: referring_isbn {
		type: string
		sql: ${TABLE}."REFERRING_ISBN" ;;
	}
		

	dimension: revoked {
		type: yesno
		sql: ${TABLE}."REVOKED" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_serialnumber_key, hash_diff, is_latest_state, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, src_platform, src_environment, subscription_length_in_days, platform, code_type, referring_isbn, revoked]
	}
		 

}
		 