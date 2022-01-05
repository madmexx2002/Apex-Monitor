prompt --application/shared_components/security/authentications/http
begin
--   Manifest
--     AUTHENTICATION: HTTP
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4100336638023588
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'MARK'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(110900282196206720)
,p_name=>'HTTP'
,p_scheme_type=>'NATIVE_HTTP_HEADER_VARIABLE'
,p_attribute_01=>'host'
,p_attribute_02=>'BUILTIN_URL'
,p_attribute_06=>'CALLBACK'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
