
view: hub_enterpriselicense {
	sql_table_name: DATAVAULT.HUB_ENTERPRISELICENSE ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_enterpriselicense_key {
		
		type: string
		sql: ${TABLE}."HUB_ENTERPRISELICENSE_KEY" ;;
	}
		

	dimension: enterprise_license {
		
		type: string
		sql: ${TABLE}."ENTERPRISE_LICENSE" ;;
	}
		

	dimension: environment {
		
		type: string
		sql: ${TABLE}."ENVIRONMENT" ;;
	}
		

	dimension: platform {
		
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_enterpriselicense_key, enterprise_license, environment, platform]
	}
		 

}
		 