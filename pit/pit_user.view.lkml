
view: pit_user {
	sql_table_name: DATAVAULT.PIT_USER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: hub_user_key {
		
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension_group: sat_user_ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."SAT_USER_LDTS" ;;
	}
		

	dimension_group: sat_user_pii_ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."SAT_USER_PII_LDTS" ;;
	}
		

	dimension_group: sat_user_login_ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."SAT_USER_LOGIN_LDTS" ;;
	}
		

	dimension_group: sat_user_marketing_ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."SAT_USER_MARKETING_LDTS" ;;
	}
		

	dimension_group: sat_user_internal_ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."SAT_USER_INTERNAL_LDTS" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, hub_user_key, sat_user_ldts, sat_user_pii_ldts, sat_user_login_ldts, sat_user_marketing_ldts, sat_user_internal_ldts]
	}
		 

}
		 