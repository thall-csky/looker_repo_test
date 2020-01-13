
view: link_serialnumber_user {
	sql_table_name: DATAVAULT.LINK_SERIALNUMBER_USER ;;


	dimension: link_serialnumber_user_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_SERIALNUMBER_USER_KEY" ;;
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

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_serialnumber_key, hub_user_key]
	}
		 

}
		 