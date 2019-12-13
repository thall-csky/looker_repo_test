
view: link_product_relationship {
	sql_table_name: DATAVAULT.LINK_PRODUCT_RELATIONSHIP ;;


	dimension: link_product_relationship_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_PRODUCT_RELATIONSHIP_KEY" ;;
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
		

	dimension: link_product_relationship_key {
		type: string
		sql: ${TABLE}."LINK_PRODUCT_RELATIONSHIP_KEY" ;;
	}
		

	dimension: hub_parent_product_key {
		type: string
		sql: ${TABLE}."HUB_PARENT_PRODUCT_KEY" ;;
	}
		

	dimension: hub_child_product_key {
		type: string
		sql: ${TABLE}."HUB_CHILD_PRODUCT_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, link_product_relationship_key, hub_parent_product_key, hub_child_product_key]
	}
		 

}
		 