prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(110641498258202749)
,p_name=>'Edit File'
,p_alias=>'EDIT-FILE'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit File'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(110506799605202691)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'875'
,p_dialog_width=>'90%'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220105102853'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130702277465705516)
,p_plug_name=>'Code'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110529423065202700)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with content as (',
'select mad.blob_to_clob(blob_content) clob_content, mime_type',
'  from apex_application_files ',
' where id = :P25_ID)',
'select clob_content as value_edit',
'     , clob_content as value_diff',
'     , case ',
'         when instr(mime_type collate binary_ci, ''sql'') > 0 then ''sql''',
'         when instr(mime_type collate binary_ci, ''javascript'') > 0 then ''javascript''',
'         when instr(mime_type collate binary_ci, ''json'') > 0 then ''json''',
'         when instr(mime_type collate binary_ci, ''css'') > 0 then ''css''',
'       else',
'         ''sql''',
'       end  as language',
' from content'))
,p_plug_source_type=>'PLUGIN_RW.APEX.VS.MONACO.EDITOR'
,p_ajax_items_to_submit=>'P25_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'85vh'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VR_CLOB       CLOB := :CLOB; ',
'    /* You need to use V(''P1_COL_NAME'') because :P1_COL_NAME is not supported here */',
'    VR_COL_NAME   VARCHAR2(200) := ''EDITOR_CODE_COLLECTION'';',
'BEGIN',
'    BEGIN',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => VR_COL_NAME);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;',
'',
'    APEX_COLLECTION.ADD_MEMBER(',
'        P_COLLECTION_NAME   => VR_COL_NAME,',
'        P_CLOB001           => VR_CLOB',
'    );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'        APEX_DEBUG.ERROR(DBMS_UTILITY.FORMAT_ERROR_STACK);',
'END;'))
,p_attribute_03=>'sql'
,p_attribute_04=>'vs-dark'
,p_attribute_05=>'undo:redo:search:diff:save'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152401794777348517)
,p_plug_name=>'{Buttons}'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110530423687202700)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152402574274348525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(152401794777348517)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(110618981805202727)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152401990894348519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(152401794777348517)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(110618981805202727)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(130700932999705503)
,p_name=>'P25_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(130702277465705516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152402275646348522)
,p_name=>'P25_DESTINATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130702277465705516)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(130702378448705517)
,p_name=>'Save Collection to APEX_APPLICATION_FILES'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(130702277465705516)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_RW.APEX.VS.MONACO.EDITOR|REGION TYPE|upload-finished'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(130702451344705518)
,p_event_id=>wwv_flow_api.id(130702378448705517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_file_content blob;',
'    l_application_id apex_application_files.flow_id%type;',
'    l_mime_type apex_application_files.mime_Type%type;',
'    l_filename apex_application_files.filename%type;',
'begin',
'    ',
'    -- Load static file details',
'    select flow_id',
'         , filename',
'         , mime_Type',
'      into l_application_id',
'         , l_filename',
'         , l_mime_type',
'      from apex_application_files ',
'     where id = :P25_ID;',
'    ',
'    -- Load clob from collection and convert to blob',
'    select mad.clob_to_blob(clob001) ',
'      into l_file_content',
'      from apex_collections ',
'     where collection_name = ''EDITOR_CODE_COLLECTION''',
'       and rownum = 1;',
'    ',
'    -- Use undocumented api to save static file',
'    case :P25_DESTINATION',
'      when ''APPLICATION'' then',
'        wwv_flow_api.create_app_static_file (',
'            p_flow_id      => l_application_id,',
'            p_file_name    => l_filename,',
'            p_mime_type    => l_mime_type,',
'            p_file_charset => ''utf-8'',',
'            p_file_content => l_file_content',
'        );',
'      when ''WORKSPACE'' then',
'        wwv_flow_api.create_workspace_static_file (',
'							p_file_name    => l_filename,',
'							p_mime_type    => l_mime_type,',
'							p_file_charset => ''utf-8'',',
'							p_file_content => l_file_content',
'			  );',
'      else',
'        raise_application_error(-20001,''Unsupported destination: '' || :P25_DESTINATION);',
'    end case;',
'end;    '))
,p_attribute_02=>'P25_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(130702555481705519)
,p_event_id=>wwv_flow_api.id(130702378448705517)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Blob saved!'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152402088099348520)
,p_name=>'Close Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(152401990894348519)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152402150870348521)
,p_event_id=>wwv_flow_api.id(152402088099348520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152402685960348526)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(152402574274348525)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152402732994348527)
,p_event_id=>wwv_flow_api.id(152402685960348526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(130701268951705506)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LoadCLOB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_clob clob;',
'    l_blob blob;',
'    l_file_charset APEX_APPLICATION_FILES.file_charset%type;',
'begin',
'    select blob_content, file_charset ',
'      into l_blob, l_file_charset ',
'      from APEX_APPLICATION_FILES ',
'     where id = :P25_ID;',
'    ',
'    l_clob := WWV_FLOW_UTILITIES.BLOB_TO_CLOB(',
'        p_blob    => L_BLOB,',
'        p_charset => L_FILE_CHARSET',
'    ); ',
'    ',
'    apex_json.open_object;',
'    apex_json.write(''success'', l_CLOB);',
'    apex_json.close_all;   ',
'',
'end;    '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(130701826456705512)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveCLOB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_clob clob;',
'    l_blob blob;',
'    l_file_charset APEX_APPLICATION_FILES.file_charset%type;',
'begin',
'    ',
'    --l_clob := apex_application.x_clob01;',
'    ',
'    select blob_content, file_charset ',
'      into l_blob, l_file_charset ',
'      from APEX_APPLICATION_FILES ',
'     where id = :P25_ID;',
'    ',
'    l_clob := WWV_FLOW_UTILITIES.BLOB_TO_CLOB(',
'        p_blob    => L_BLOB,',
'        p_charset => L_FILE_CHARSET',
'    ); ',
'    ',
'    apex_json.open_object;',
'    apex_json.write(''success'', ''Data saved'');',
'    apex_json.close_all;   ',
'',
'end;    '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
