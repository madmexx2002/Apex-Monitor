prompt --application/create_application
begin
--   Manifest
--     FLOW: 112
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4100336638023588
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'MARK'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MARK')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Apex Monitor')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APEX-MONITOR')
,p_page_view_logging=>'NO'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'1D794648AD03A5B836ACC832F48AB323D3D407960CB272BD1984A386C8BF4B23'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'de'
,p_flow_language_derived_from=>'0'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD.MM.YYYY'
,p_date_time_format=>'DD.MM.YYYY HH24:MI:SS'
,p_timestamp_format=>'DD.MM.YYYY HH24:MI:SSXFF'
,p_timestamp_tz_format=>'DD.MM.YYYY HH24:MI:SSXFF TZR'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2022.01.01.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(110900282196206720)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Apex Monitor'
,p_app_builder_icon_name=>'medical-device64x64.png'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Apex Monitor'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220105154653'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>14
,p_ui_type_name => null
);
wwv_flow_api.component_end;
end;
/
