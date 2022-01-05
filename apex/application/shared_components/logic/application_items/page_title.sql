prompt --application/shared_components/logic/application_items/page_title
begin
--   Manifest
--     APPLICATION ITEM: PAGE_TITLE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4100336638023588
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'MARK'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(112200231367318054)
,p_name=>'PAGE_TITLE'
,p_protection_level=>'I'
,p_item_comment=>'Item is holding the current page title for substitutions.'
);
wwv_flow_api.component_end;
end;
/
