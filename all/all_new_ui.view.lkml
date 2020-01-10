
view: all_new_ui {
	sql_table_name: DATAVAULT.ALL_NEW_UI ;;


	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: iam_provider {
		type: string
		sql: ${TABLE}."IAM_PROVIDER" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hub_institution_key {
		type: string
		sql: ${TABLE}."HUB_INSTITUTION_KEY" ;;
	}
		

	dimension: link_user_institution_key {
		type: string
		sql: ${TABLE}."LINK_USER_INSTITUTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [user_sso_guid, iam_provider, hub_user_key, hub_institution_key, link_user_institution_key]
	}
		 

}
		 