
view: all_new_users {
	sql_table_name: DATAVAULT.ALL_NEW_USERS ;;


	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: platform {
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: environment {
		type: string
		sql: ${TABLE}."ENVIRONMENT" ;;
	}
		

	dimension: iam_provider {
		type: string
		sql: ${TABLE}."IAM_PROVIDER" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, user_sso_guid, platform, environment, iam_provider, hub_user_key]
	}
		 

}
		 