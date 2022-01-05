prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(110641498258202749)
,p_name=>'Static Application Files'
,p_alias=>'STATIC-APPLICATION-FILES'
,p_step_title=>'Static Application Files'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#js/mad.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[headers="ACTION"] {',
'  width: 84px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220105101721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124200812385153679)
,p_plug_name=>'&PAGE_TITLE.'
,p_icon_css_classes=>'fa-files-o fa-lg fa-2x'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110547292273202705)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(110502858558202678)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(110620331029202727)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124201409688153681)
,p_plug_name=>'Static Application Files'
,p_region_name=>'STATIC_APPLICATION_FILES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110554939367202706)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_FILE_ID',
'     , WORKSPACE',
'     , WORKSPACE_DISPLAY_NAME',
'     , APPLICATION_ID',
'     , APPLICATION_NAME',
'     , FILE_NAME',
'     , MIME_TYPE',
'     , FILE_CHARSET',
'     , apex_util.filesize_mask(dbms_lob.getlength(FILE_CONTENT)) FILESIZE',
'     , CREATED_BY',
'     , CREATED_ON',
'     , LAST_UPDATED_BY',
'     , LAST_UPDATED_ON',
'     , case when mime_Type like ''text%'' or instr(MIME_TYPE collate binary_ci,''javascript'') > 0 then',
'         ''<button type="button" onclick="'' || apex_page.get_url(P_PAGE => 25, P_ITEMS => ''P25_ID,P25_DESTINATION'', P_VALUES => APPLICATION_FILE_ID || '',APPLICATION'') ||''" title="Edit File" aria-label="Edit File" class="t-Button t-Button--noLabel t-Bu'
||'tton--icon t-Button--small">''',
'         || ''<span aria-hidden="true" class="t-Icon fa fa-edit"></span></button>''',
'       else',
'         null',
'       end as ACTION',
'  from APEX_APPLICATION_STATIC_FILES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Static Application Files'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(124201587904153681)
,p_name=>'Static Application Files'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MARK'
,p_internal_uid=>124201587904153681
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124203921837153688)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124205137306153689)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124205500461153689)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_TIME_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124208775380153690)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>19
,p_column_identifier=>'R'
,p_column_label=>'File Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138305716101036207)
,p_db_column_name=>'APPLICATION_FILE_ID'
,p_display_order=>29
,p_column_identifier=>'S'
,p_column_label=>'Application File Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138305864140036208)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>39
,p_column_identifier=>'T'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138305962036036209)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>49
,p_column_identifier=>'U'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138306097788036210)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>59
,p_column_identifier=>'V'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138306197088036211)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>69
,p_column_identifier=>'W'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138306276048036212)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>79
,p_column_identifier=>'X'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138306455923036214)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>99
,p_column_identifier=>'Z'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138306513895036215)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>109
,p_column_identifier=>'AA'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'&APP_DATE_TIME_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138306774590036217)
,p_db_column_name=>'FILESIZE'
,p_display_order=>119
,p_column_identifier=>'AC'
,p_column_label=>'Filesize'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(138307037153036220)
,p_db_column_name=>'ACTION'
,p_display_order=>129
,p_column_identifier=>'AD'
,p_column_label=>'Action'
,p_column_html_expression=>'<button onclick="mad.download.downloadJSON(''DOWNLOAD_FILE'',{x01: ''#APPLICATION_FILE_ID#''})" type="button" title="Download Static File" aria-label="Download Static File" class="t-Button t-Button--noLabel t-Button--icon t-Button--small"><span aria-hidd'
||'en="true" class="t-Icon fa fa-download"></span></button>#ACTION#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ACTION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(124300153143154289)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1243002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'ACTION:APPLICATION_ID:APPLICATION_NAME:FILE_NAME:FILESIZE:MIME_TYPE:CREATED_BY:CREATED_ON:LAST_UPDATED_BY:LAST_UPDATED_ON:FILE_CHARSET:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(144600268824871688)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(124201409688153681)
,p_button_name=>'BTN_DOWNLOAD'
,p_button_static_id=>'BTN_DOWNLOAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(110619070298202727)
,p_button_image_alt=>'Download filtered static files'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138306870133036218)
,p_name=>'IR Plugin'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138306963299036219)
,p_event_id=>wwv_flow_api.id(138306870133036218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.MADMEXX.IRU'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(124201409688153681)
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'#f5df69'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(144700193939874528)
,p_name=>'Dowload filtered Backups as Zip'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(144600268824871688)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(144700541122874547)
,p_event_id=>wwv_flow_api.id(144700193939874528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mad.download.downloadJSON(''DOWNLOAD_FILES'', null, ''#BTN_DOWNLOAD'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(144900188113877009)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOAD_FILE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  L_FILE_NAME    APEX_APPLICATION_FILES.FILENAME%TYPE;',
'  L_FILE_CONTENT APEX_APPLICATION_FILES.BLOB_CONTENT%TYPE;',
'  L_MIME_TYPE    APEX_APPLICATION_FILES.MIME_TYPE%TYPE;',
'begin',
'',
'  -- Load a random file from APEX_APPLICATION_STATIC_FILES',
'  select APEX_APPLICATION_FILES.FILENAME ',
'       , APEX_APPLICATION_FILES.MIME_TYPE',
'       , APEX_APPLICATION_FILES.BLOB_CONTENT',
'    into L_FILE_NAME',
'       , L_MIME_TYPE',
'       , L_FILE_CONTENT',
'    from APEX_APPLICATION_FILES',
'   where ID = APEX_APPLICATION.G_X01;',
'',
'  -- Push File as JSON Object into the buffer',
'  MAD.DOWNLOAD_JSON(',
'      IN_FILE_CONTENT => L_FILE_CONTENT',
'    , IN_MIME_TYPE => L_MIME_TYPE',
'    , IN_FILE_NAME => L_FILE_NAME',
'  );',
'',
'exception ',
'  when no_data_found then',
'    apex_json.open_object;',
'    apex_json.write(''error'',''Could not find record with the ID: '' || APEX_APPLICATION.G_X01 || ''. '');',
'    apex_json.close_all;',
'  when others then',
'    apex_json.open_object;',
'    apex_json.write(''error'',sqlerrm);',
'    apex_json.close_all;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(144800203220876309)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOAD_FILES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  L_FILES MAD.T_FILES;',
'  L_COLLECTION_NAME varchar2(255) := ''STATIC_APPLICATION_FILES'';',
'begin',
'',
'  -- Prepare Collection',
'  mad.IR_TO_COLLECTION (',
'    IN_REPORT_ID       => ''STATIC_APPLICATION_FILES''',
'  , IN_COLLECTION_NAME => L_COLLECTION_NAME',
'  , IN_COLUMNS         => ''APPLICATION_FILE_ID''',
'  );',
'',
'  -- Bulk Collect from APEX_APPLICATION_FILES',
'  select APEX_APPLICATION_FILES.BLOB_CONTENT',
'       , APEX_APPLICATION_FILES.FILENAME ',
'       , APEX_APPLICATION_FILES.MIME_TYPE',
'    bulk collect',
'    into L_FILES',
'    from APEX_APPLICATION_FILES',
'   where ID in (select to_number(c001) from apex_collections where collection_name = L_COLLECTION_NAME);',
'  ',
'  -- Push File(s) as JSON Object into the buffer',
'  MAD.DOWNLOAD_ZIP_JSON(',
'    IN_FILES => L_FILES',
'  , IN_ARCHIVE_NAME => TO_CHAR(SYSDATE, ''YYYY-MM-DD_HH24MISS'') || ''_Application_Static_Files'');',
'',
'exception ',
'  when no_data_found then',
'    apex_json.open_object;',
'    apex_json.write(''error'',''Could not download filtered Files.'');',
'    apex_json.close_all;',
'  when others then',
'    apex_json.open_object;',
'    apex_json.write(''error'',sqlerrm);',
'    apex_json.close_all;',
'   ',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
