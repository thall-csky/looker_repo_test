
view: all_new_sn_user {
	sql_table_name: DATAVAULT.ALL_NEW_SN_USER ;;


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
		

	dimension_group: registration_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."REGISTRATION_DATE" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [local_time_date, local_time_week, local_time_month, local_time_quarter, local_time_year, serial_number, user_sso_guid, user_environment, registration_date_date, registration_date_week, registration_date_month, registration_date_quarter, registration_date_year]
	}
		 

}
		 