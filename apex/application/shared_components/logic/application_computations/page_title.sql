prompt --application/shared_components/logic/application_computations/page_title
begin
--   Manifest
--     APPLICATION COMPUTATION: PAGE_TITLE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>4100336638023588
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'MARK'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(112500274886324156)
,p_computation_sequence=>10
,p_computation_item=>'PAGE_TITLE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select page_title from apex_application_pages where page_id = :APP_PAGE_ID and application_id = :APP_ID'
,p_computation_comment=>'Item is holding the current page title for substitutions.'
);
wwv_flow_api.component_end;
end;
/
