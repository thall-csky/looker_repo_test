
view: link_user_contract {
	sql_table_name: DATAVAULT.LINK_USER_CONTRACT ;;


	dimension: link_user_contract_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_USER_CONTRACT_KEY" ;;
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

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}

	dimension: hub_contract_key {
		type: string
		sql: ${TABLE}."HUB_CONTRACT_KEY" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_user_key, hub_contract_key]
	}
		 

}
		 