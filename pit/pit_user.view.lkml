
view: pit_user {
	sql_table_name: DATAVAULT.PIT_USER ;;


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
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, hub_user_key, sat_user_ldts_date, sat_user_ldts_week, sat_user_ldts_month, sat_user_ldts_quarter, sat_user_ldts_year, sat_user_pii_ldts_date, sat_user_pii_ldts_week, sat_user_pii_ldts_month, sat_user_pii_ldts_quarter, sat_user_pii_ldts_year, sat_user_login_ldts_date, sat_user_login_ldts_week, sat_user_login_ldts_month, sat_user_login_ldts_quarter, sat_user_login_ldts_year, sat_user_marketing_ldts_date, sat_user_marketing_ldts_week, sat_user_marketing_ldts_month, sat_user_marketing_ldts_quarter, sat_user_marketing_ldts_year, sat_user_internal_ldts_date, sat_user_internal_ldts_week, sat_user_internal_ldts_month, sat_user_internal_ldts_quarter, sat_user_internal_ldts_year]
	}
		 

}
		 