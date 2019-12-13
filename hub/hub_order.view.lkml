
view: hub_order {
	sql_table_name: DATAVAULT.HUB_ORDER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_order_key {
		
		type: string
		sql: ${TABLE}."HUB_ORDER_KEY" ;;
	}
		

	dimension: order_id {
		
		type: string
		sql: ${TABLE}."ORDER_ID" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, order_id]
	}
		 

}
		 