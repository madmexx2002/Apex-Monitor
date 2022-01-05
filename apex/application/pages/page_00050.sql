prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(110641498258202749)
,p_name=>'Application Backups'
,p_alias=>'APPLICATION-BACKUPS'
,p_step_title=>'Application Backups'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#js/mad.js'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220104215213'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134000866444236332)
,p_plug_name=>'&PAGE_TITLE.'
,p_icon_css_classes=>'fa-file-archive-o fa-lg fa-2x'
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
 p_id=>wwv_flow_api.id(134001404777236334)
,p_plug_name=>'Application Backup'
,p_region_name=>'APPLICATION_BACKUPS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110554939367202706)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_APPLICATION_FILES.ID',
'     , APEX_APPLICATIONS.APPLICATION_ID',
'     , APEX_APPLICATIONS.APPLICATION_NAME',
'     , APEX_APPLICATIONS.APPLICATION_GROUP',
'     , APEX_APPLICATION_FILES.FILENAME',
'     , APEX_APPLICATION_FILES.MIME_TYPE',
'     , APEX_UTIL.FILESIZE_MASK(APEX_APPLICATION_FILES.DOC_SIZE) as DOC_SIZE',
'     , APEX_APPLICATION_FILES.CREATED_ON',
'     , APEX_APPLICATION_FILES.CREATED_BY',
'     , APEX_APPLICATION_FILES.DESCRIPTION',
'     , NULL AS ACTION',
'  from APEX_APPLICATION_FILES',
'  join APEX_APPLICATIONS',
'    on APEX_APPLICATIONS.APPLICATION_ID = APEX_APPLICATION_FILES.FLOW_ID',
' where FILE_TYPE = ''FLOW_BACKUP'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Application Backup'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(134001533297236334)
,p_name=>'Application Backup'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MARK'
,p_internal_uid=>134001533297236334
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(130703520158705529)
,p_db_column_name=>'ACTION'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'Action'
,p_column_html_expression=>'<button onclick="mad.download.downloadJSON(''DOWNLOAD_FILE'',{x01: ''#ID#''})" type="button" title="Download Application" aria-label="Download Application" class="t-Button t-Button--noLabel t-Button--icon t-Button--small"><span aria-hidden="true" class="'
||'t-Icon fa fa-download"></span></button>'
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
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134001954910236342)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134002399689236348)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134002774564236348)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134003141456236348)
,p_db_column_name=>'APPLICATION_GROUP'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Application Group'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134003563074236348)
,p_db_column_name=>'FILENAME'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134005510904236349)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134003917226236348)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134004780443236349)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'&APP_DATE_TIME_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134005117280236349)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(130702908322705523)
,p_db_column_name=>'DOC_SIZE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Filesize'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(134400128511245627)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1344002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'ACTION:APPLICATION_ID:APPLICATION_NAME:APPLICATION_GROUP:FILENAME:DOC_SIZE:MIME_TYPE:CREATED_ON:CREATED_BY:DESCRIPTION:'
,p_sort_column_1=>'APPLICATION_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CREATED_ON'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(130703209818705526)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(134001404777236334)
,p_button_name=>'BTN_DOWNLOAD'
,p_button_static_id=>'BTN_DOWNLOAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(110619070298202727)
,p_button_image_alt=>'Download filtered Backups'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(130702735479705521)
,p_name=>'IR Plugin'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(130702880669705522)
,p_event_id=>wwv_flow_api.id(130702735479705521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.MADMEXX.IRU'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(134001404777236334)
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'#F5DF69'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138305573915036205)
,p_name=>'Dowload filtered Backups as Zip'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(130703209818705526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138305623606036206)
,p_event_id=>wwv_flow_api.id(138305573915036205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mad.download.downloadJSON(''DOWNLOAD_FILES'', null, ''#BTN_DOWNLOAD'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(130703410639705528)
,p_process_sequence=>10
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
'  select TO_CHAR(APEX_APPLICATION_FILES.CREATED_ON, ''YYYY-MM-DD_HH24MISS'') || ''_'' || APEX_APPLICATION_FILES.FILENAME as DOWNLOAD_FILENAME',
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
 p_id=>wwv_flow_api.id(130703947725705533)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOAD_FILES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  L_FILES MAD.T_FILES;',
'  L_COLLECTION_NAME varchar2(255) := ''APPLICATION_BACKUPS'';',
'begin',
'',
'  -- Prepare Collection',
'  mad.IR_TO_COLLECTION (',
'    IN_REPORT_ID       => ''APPLICATION_BACKUPS''',
'  , IN_COLLECTION_NAME => L_COLLECTION_NAME',
'  , IN_COLUMNS         => ''ID''',
'  );',
'',
'  -- Bulk Collect from APEX_APPLICATION_FILES',
'  select APEX_APPLICATION_FILES.BLOB_CONTENT',
'       , TO_CHAR(APEX_APPLICATION_FILES.CREATED_ON, ''YYYY-MM-DD_HH24MISS'') || ''_'' || APEX_APPLICATION_FILES.FILENAME as DOWNLOAD_FILENAME',
'       , APEX_APPLICATION_FILES.MIME_TYPE',
'    bulk collect',
'    into L_FILES',
'    from APEX_APPLICATION_FILES',
'   where ID in (select to_number(c001) from apex_collections where collection_name = L_COLLECTION_NAME);',
'',
'  --apex_debug.error(''ERROR '' || L_FILES.count);',
'  ',
'  -- Push File(s) as JSON Object into the buffer',
'  MAD.DOWNLOAD_ZIP_JSON(',
'    IN_FILES => L_FILES',
'  , IN_ARCHIVE_NAME => TO_CHAR(SYSDATE, ''YYYY-MM-DD_HH24MISS'') || ''_Application_Backups'');',
'',
'exception ',
'  when no_data_found then',
'    apex_json.open_object;',
'    apex_json.write(''error'',''Could not download filtered Backups.'');',
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
