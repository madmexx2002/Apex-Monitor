prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4100336638023588
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'MARK'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(110641498258202749)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Apex Monitor'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220105154653'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(110652271316202877)
,p_plug_name=>'Apex Monitor'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110547292273202705)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Utilities for Oracle Application Express Developers'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
