prompt --application/shared_components/files/app_icon_css
begin
--   Manifest
--     APP STATIC FILES: 112
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4100336638023588
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'MARK'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0D0A202020206261636B67726F756E642D696D6167653A2075726C286D65646963616C2D6465766963652E737667293B0D0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D0A20202020';
wwv_flow_api.g_varchar2_table(2) := '6261636B67726F756E642D73697A653A20636F6E7461696E3B0D0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0D0A202020206261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(110642673533202814)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
