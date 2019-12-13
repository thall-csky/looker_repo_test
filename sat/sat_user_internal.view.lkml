
view: sat_user_internal {
	sql_table_name: DATAVAULT.SAT_USER_INTERNAL ;;


	dimension: hub_user_key_ldts {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_USER_KEY", ' ', ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: active {
		type: yesno
		sql: ${TABLE}."ACTIVE" ;;
	}
		

	dimension: internal {
		type: yesno
		sql: ${TABLE}."INTERNAL" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, hash_diff, active, internal]
	}
		 

}
		 