
view: all_new_link_user_cs {
	sql_table_name: DATAVAULT.ALL_NEW_LINK_USER_CS ;;


	dimension: iam_provider {
		type: string
		sql: ${TABLE}."IAM_PROVIDER" ;;
	}
		

	dimension: link_user_coursesection_key {
		type: string
		sql: ${TABLE}."LINK_USER_COURSESECTION_KEY" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hub_coursesection_key {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [iam_provider, link_user_coursesection_key, hub_user_key, hub_coursesection_key]
	}
		 

}
		 