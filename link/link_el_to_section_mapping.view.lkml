
view: link_el_to_section_mapping {
	sql_table_name: DATAVAULT.LINK_EL_TO_SECTION_MAPPING ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}

	dimension: hub_el_to_section_mapping_key {
		type: string
		sql: ${TABLE}."HUB_EL_TO_SECTION_MAPPING_KEY" ;;
	}

	dimension: hub_coursesection_key {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
	}

	dimension: hub_enterpriselicense_key {
		type: string
		sql: ${TABLE}."HUB_ENTERPRISELICENSE_KEY" ;;
	}

	dimension: link_el_to_section_mapping_key {
		type: string
		sql: ${TABLE}."LINK_EL_TO_SECTION_MAPPING_KEY" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_el_to_section_mapping_key, hub_coursesection_key, hub_enterpriselicense_key, link_el_to_section_mapping_key]
	}
		 

}
		 