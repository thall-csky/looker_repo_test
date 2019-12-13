
view: link_subscription_order {
	sql_table_name: DATAVAULT.LINK_SUBSCRIPTION_ORDER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
			 
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
			 
			 
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_subscription_order_key {
			 
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_SUBSCRIPTION_ORDER_KEY" ;;
	}
		

	dimension: hub_subscription_key {
			 
			 
		type: string
		sql: ${TABLE}."HUB_SUBSCRIPTION_KEY" ;;
	}
		

	dimension: hub_order_key {
			 
			 
		type: string
		sql: ${TABLE}."HUB_ORDER_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_subscription_key, hub_order_key]
	}
		 

}
		 