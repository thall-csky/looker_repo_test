
view: all_new_sn_user_eff {
	sql_table_name: DATAVAULT.ALL_NEW_SN_USER_EFF ;;


	dimension_group: local_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."LOCAL_TIME" ;;
	}
		

	dimension: serial_number {
		type: string
		sql: ${TABLE}."SERIAL_NUMBER" ;;
	}
		

	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: user_environment {
		type: string
		sql: ${TABLE}."USER_ENVIRONMENT" ;;
	}
		

	dimension_group: effective_from {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EFFECTIVE_FROM" ;;
	}
		

	dimension: is_effective {
		type: yesno
		sql: ${TABLE}."IS_EFFECTIVE" ;;
	}
		

	dimension_group: effective_to {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EFFECTIVE_TO" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [local_time_date, local_time_week, local_time_month, local_time_quarter, local_time_year, serial_number, user_sso_guid, user_environment, effective_from_date, effective_from_week, effective_from_month, effective_from_quarter, effective_from_year, is_effective, effective_to_date, effective_to_week, effective_to_month, effective_to_quarter, effective_to_year]
	}
		 

}
		 