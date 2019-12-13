
view: hub_el_to_section_mapping {
	sql_table_name: DATAVAULT.HUB_EL_TO_SECTION_MAPPING ;;


	dimension_group: _ldts {|		timeframes: [raw, time, date, week, month, quarter, year]		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: context_id {		type: string
		sql: ${TABLE}."CONTEXT_ID" ;;
	}
		

	dimension: enterprise_license {		type: string
		sql: ${TABLE}."ENTERPRISE_LICENSE" ;;
	}
		

	dimension: environment {		type: string
		sql: ${TABLE}."ENVIRONMENT" ;;
	}
		

	dimension: platform {		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: hub_el_to_section_mapping_key {		type: string
		sql: ${TABLE}."HUB_EL_TO_SECTION_MAPPING_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, context_id, enterprise_license, environment, platform, hub_el_to_section_mapping_key]
	}
		 

}
		 