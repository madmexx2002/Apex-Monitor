prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(110641498258202749)
,p_name=>'Apex Applications'
,p_alias=>'APEX-APPLICATIONS'
,p_step_title=>'Apex Applications'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Card-subtitle {',
'    font-size: 2rem!important;',
'    color: black!important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220104221532'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(111300857211231446)
,p_plug_name=>'&PAGE_TITLE.'
,p_icon_css_classes=>'fa-apex fa-lg fa-2x'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--iconsSquare'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110547292273202705)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(110502858558202678)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(110620331029202727)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(120700663850646906)
,p_name=>'Apex Applications'
,p_template=>wwv_flow_api.id(110556870509202707)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--displaySubtitle:t-Cards--featured force-fa-lg:t-Cards--4cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as ACTION',
'     , WORKSPACE_DISPLAY_NAME',
'     , APPLICATION_ID',
'     , APPLICATION_NAME',
'     , ALIAS',
'     , APPLICATION_GROUP',
'     , APP_BUILDER_ICON_NAME',
'     , VERSION',
'     , DEBUGGING',
'     , LAST_UPDATED_BY',
'     , LAST_UPDATED_ON',
'     , APP_BUILDER_ICON_NAME as ICON',
'     , APEX_APPLICATION_FILES.ID',
'     , DBMS_LOB.GETLENGTH(APEX_APPLICATION_FILES.BLOB_CONTENT) BLOB_CONTENT',
'     , APEX_APPLICATION_FILES.MIME_TYPE',
'     , APEX_APPLICATION_FILES.FILENAME',
'     ',
'     , ''fa-heart'' CARD_ICON',
'     , ''f?p='' || APPLICATION_ID CARD_LINK',
'     , case',
'             when APEX_APPLICATION_FILES.MIME_TYPE is not null then',
'               ''<img src="'' || APEX_UTIL.GET_BLOB_FILE_SRC(''P15_BLOB_CONTENT'', APPLICATION_ID) || ''" height="64px"></img>''',
'             else',
'               ''<span style="height: 66px;" class="t-Icon fa fa-apex fa-lg fa-2x"></span>''',
'       end CARD_TITLE',
'     , ''Last updated: '' || to_char(LAST_UPDATED_ON,''YYYY.MM.DD'') ',
'       || ''<br>Updated by: '' || LAST_UPDATED_BY CARD_TEXT  ',
'     , APPLICATION_NAME || '' ('' || APPLICATION_ID || '')'' CARD_SUBTITLE',
'     , ''<object>''',
'--       || ''<a href="'' || ''f?p=4000:1:'' || :APP_SESSION || ''::NO:RP:FB_FLOW_ID,F4000_P1_FLOW,P0_FLOWPAGE,RECENT_PAGES:'' || APPLICATION_ID || '','' || APPLICATION_ID || '','' || APPLICATION_ID || ''" title="Application Builder" aria-label="Application Bui'
||'lder" class="t-Button t-Button--noLabel t-Button--icon">''',
'--       || ''<span aria-hidden="true" class="t-Icon fa fa-apex"></span></a>''',
'       ',
'       || ''<a href="'' || apex_page.get_url(p_page => 40, P_ITEMS => ''P40_APPLICATION_ID'', P_VALUES => APPLICATION_ID) || ''" title="Export Application" aria-label="Export Application" class="t-Button t-Button--noLabel t-Button--icon">''',
'       || ''<span aria-hidden="true" class="t-Icon fa fa-database-arrow-down"></span></a>''',
'',
'       || ''<a href="'' || apex_page.get_url(P_PAGE => 20, p_clear_cache => ''CIR'', P_REQUEST => '''', P_ITEMS => ''IR[STATIC_APPLICATION_FILES]EQ_APPLICATION_ID'', P_VALUES => APPLICATION_ID) || ''"''',
'       || '' title="Static Application Files" aria-label="Static Application Files" class="t-Button t-Button--noLabel t-Button--icon"><span aria-hidden="true" class="t-Icon fa fa-files-o"></span></a>''',
'       ',
'       || ''<a href="'' || apex_page.get_url(P_PAGE => 50, p_clear_cache => ''CIR'', P_REQUEST => '''', P_ITEMS => ''IR[APPLICATION_BACKUPS]EQ_APPLICATION_ID'', P_VALUES => APPLICATION_ID) || ''"'' ',
'       || '' title="Application Backups" aria-label="Application Backups" class="t-Button t-Button--noLabel t-Button--icon"><span aria-hidden="true" class="t-Icon fa fa-file-archive-o"></span></a>''',
'       ',
'       || ''</object>''',
'       AS CARD_SUBTEXT',
'  from APEX_APPLICATIONS',
'  left join APEX_APPLICATION_FILES',
'    on APEX_APPLICATION_FILES.FLOW_ID = APEX_APPLICATIONS.APPLICATION_ID',
'   and APEX_APPLICATIONS.APP_BUILDER_ICON_NAME = APEX_APPLICATION_FILES.FILENAME',
' order by APPLICATION_ID',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(127101063946917547)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702031556646920)
,p_query_column_id=>1
,p_column_alias=>'ACTION'
,p_column_display_sequence=>1
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702184094646921)
,p_query_column_id=>2
,p_column_alias=>'WORKSPACE_DISPLAY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Workspace Display Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702250187646922)
,p_query_column_id=>3
,p_column_alias=>'APPLICATION_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Application Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702377005646923)
,p_query_column_id=>4
,p_column_alias=>'APPLICATION_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Application Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702462933646924)
,p_query_column_id=>5
,p_column_alias=>'ALIAS'
,p_column_display_sequence=>5
,p_column_heading=>'Alias'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702564129646925)
,p_query_column_id=>6
,p_column_alias=>'APPLICATION_GROUP'
,p_column_display_sequence=>6
,p_column_heading=>'Application Group'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702616713646926)
,p_query_column_id=>7
,p_column_alias=>'APP_BUILDER_ICON_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'App Builder Icon Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702710868646927)
,p_query_column_id=>8
,p_column_alias=>'VERSION'
,p_column_display_sequence=>8
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702841010646928)
,p_query_column_id=>9
,p_column_alias=>'DEBUGGING'
,p_column_display_sequence=>9
,p_column_heading=>'Debugging'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120702979284646929)
,p_query_column_id=>10
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Last Updated By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120703086504646930)
,p_query_column_id=>11
,p_column_alias=>'LAST_UPDATED_ON'
,p_column_display_sequence=>11
,p_column_heading=>'Last Updated On'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120703101394646931)
,p_query_column_id=>12
,p_column_alias=>'ICON'
,p_column_display_sequence=>12
,p_column_heading=>'Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120703720010646937)
,p_query_column_id=>13
,p_column_alias=>'ID'
,p_column_display_sequence=>13
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120703896997646938)
,p_query_column_id=>14
,p_column_alias=>'BLOB_CONTENT'
,p_column_display_sequence=>14
,p_column_heading=>'Blob Content'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120703995198646939)
,p_query_column_id=>15
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>15
,p_column_heading=>'Mime Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704040597646940)
,p_query_column_id=>16
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>16
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704418275646944)
,p_query_column_id=>17
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>19
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704994584646949)
,p_query_column_id=>18
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>22
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704294375646942)
,p_query_column_id=>19
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>17
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704752644646947)
,p_query_column_id=>20
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>21
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704614097646946)
,p_query_column_id=>21
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(120704331470646943)
,p_query_column_id=>22
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>18
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(120700334472646903)
,p_name=>'IR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.component_end;
end;
/
