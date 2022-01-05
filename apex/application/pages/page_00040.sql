prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(110641498258202749)
,p_name=>'Export Application'
,p_alias=>'EXPORT-APPLICATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Export Application'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#js/mad.js'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MARK'
,p_last_upd_yyyymmddhh24miss=>'20220105134105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138307259689036222)
,p_plug_name=>'{Export Flags}'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(110529423065202700)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138309077465036240)
,p_plug_name=>'{Buttons Container}'
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
 p_id=>wwv_flow_api.id(152403355000348533)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(138309077465036240)
,p_button_name=>'DOWNLOAD_APPLICATION'
,p_button_static_id=>'DOWNLOAD_APPLICATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(110619070298202727)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Application'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(138309203978036242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(138309077465036240)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(110618981805202727)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(152403062962348530)
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::P40_APPLICATION_ID:&P40_APPLICATION_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138307395259036223)
,p_name=>'P40_APPLICATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_prompt=>'Application ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138307446110036224)
,p_name=>'P40_APPLICATION_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Name'
,p_source=>'select application_name from apex_applications where application_id = :P40_APPLICATION_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138307548642036225)
,p_name=>'P40_SPLIT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'Split'
,p_source=>'EXPORT_SPLIT'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', split the definition into discrete elements that can be stored in separate files. If false, the result is a single file.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138307832653036228)
,p_name=>'P40_WITH_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Date'
,p_source=>'EXPORT_WITH_DATE'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', include export date and time in the result.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138307908828036229)
,p_name=>'P40_WITH_PUBLIC_REPORTS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Public Reports'
,p_source=>'EXPORT_WITH_PUBLIC_REPORTS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', include public reports that a user saved.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308088704036230)
,p_name=>'P40_WITH_PRIVATE_REPORTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Private Reports'
,p_source=>'EXPORT_WITH_PRIVATE_REPORTS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', include private reports that a user saved.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308102419036231)
,p_name=>'P40_WITH_NOTIFICATIONS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Notifications'
,p_source=>'EXPORT_WITH_NOTIFICATIONS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', include report notifications.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308280483036232)
,p_name=>'P40_WITH_TRANSLATIONS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Translations'
,p_source=>'EXPORT_WITH_TRANSLATIONS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', include application translation mappings and all text from the translation repository.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308363112036233)
,p_name=>'P40_WITH_PKG_APP_MAPPING'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Packaged App Mapping'
,p_source=>'EXPORT_WITH_PKG_APP_MAPPING'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', export installed packaged applications  with references to the packaged application definition. If ''No'', export them as normal applications.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308515570036235)
,p_name=>'P40_WITH_ORIGINAL_IDS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Original IDs'
,p_source=>'EXPORT_WITH_ORIGINAL_IDS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', export with the IDs as they were when the application was imported.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308601376036236)
,p_name=>'P40_WITH_NO_SUBSCRIPTIONS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With No Subscriptions'
,p_source=>'EXPORT_WITH_NO_SUBSCRIPTIONS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', components contain subscription references.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308784044036237)
,p_name=>'P40_WITH_COMMENTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With Comments'
,p_source=>'EXPORT_WITH_COMMENTS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', include developer comments.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308830781036238)
,p_name=>'P40_WITH_SUPPORTING_OBJECTS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'null'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'With Supporting Objects'
,p_source=>'EXPORT_WITH_SUPPORTING_OBJECTS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,Install;I,No;N,Deploy;DEPLOY'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', export supporting objects. If ''Install'',automatically install on import. If ''No'', do not export supporting objects. If ''Deploay'', the application''s include in export deployment value is used.'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(138308906943036239)
,p_name=>'P40_WITH_ACL_ASSIGNMENTS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(138307259689036222)
,p_item_default=>'FALSE'
,p_prompt=>'With ACL Assignments'
,p_source=>'EXPORT_WITH_ACL_ASSIGNMENTS'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;TRUE,No;FALSE'
,p_field_template=>wwv_flow_api.id(110617668708202725)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If ''Yes'', export ACL user role assignments.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138307622522036226)
,p_name=>'Save Preference 1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_SPLIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138307792272036227)
,p_event_id=>wwv_flow_api.id(138307622522036226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_SPLIT'',:P40_SPLIT);'
,p_attribute_02=>'P40_SPLIT'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138309362225036243)
,p_name=>'Save Preference 2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138309417491036244)
,p_event_id=>wwv_flow_api.id(138309362225036243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_DATE'',:P40_WITH_DATE);'
,p_attribute_02=>'P40_WITH_DATE'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138309523527036245)
,p_name=>'Save Preference 3'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_PUBLIC_REPORTS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138309664614036246)
,p_event_id=>wwv_flow_api.id(138309523527036245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_PUBLIC_REPORTS'',:P40_WITH_PUBLIC_REPORTS);'
,p_attribute_02=>'P40_WITH_PUBLIC_REPORTS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138309718070036247)
,p_name=>'Save Preference 4'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_PRIVATE_REPORTS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138309857198036248)
,p_event_id=>wwv_flow_api.id(138309718070036247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_PRIVATE_REPORTS'',:P40_WITH_PRIVATE_REPORTS);'
,p_attribute_02=>'P40_WITH_PRIVATE_REPORTS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(138309990720036249)
,p_name=>'Save Preference 5'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_NOTIFICATIONS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(138310097084036250)
,p_event_id=>wwv_flow_api.id(138309990720036249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_NOTIFICATIONS'',:P40_WITH_NOTIFICATIONS);'
,p_attribute_02=>'P40_WITH_NOTIFICATIONS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152400155898348501)
,p_name=>'Save Preference 6'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_TRANSLATIONS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152400256523348502)
,p_event_id=>wwv_flow_api.id(152400155898348501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_TRANSLATIONS'',:P40_WITH_TRANSLATIONS);'
,p_attribute_02=>'P40_WITH_TRANSLATIONS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152400309638348503)
,p_name=>'Save Preference 7'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_PKG_APP_MAPPING'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152400419042348504)
,p_event_id=>wwv_flow_api.id(152400309638348503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_PKG_APP_MAPPING'',:P40_WITH_PKG_APP_MAPPING);'
,p_attribute_02=>'P40_WITH_PKG_APP_MAPPING'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152400526504348505)
,p_name=>'Save Preference 8'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_ORIGINAL_IDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152400697888348506)
,p_event_id=>wwv_flow_api.id(152400526504348505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_ORIGINAL_IDS'',:P40_WITH_ORIGINAL_IDS);'
,p_attribute_02=>'P40_WITH_ORIGINAL_IDS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152400765288348507)
,p_name=>'Save Preference 9'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_NO_SUBSCRIPTIONS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152400864196348508)
,p_event_id=>wwv_flow_api.id(152400765288348507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_NO_SUBSCRIPTIONS'',:P40_WITH_NO_SUBSCRIPTIONS);'
,p_attribute_02=>'P40_WITH_NO_SUBSCRIPTIONS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152400932083348509)
,p_name=>'Save Preference 10'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_COMMENTS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152401021969348510)
,p_event_id=>wwv_flow_api.id(152400932083348509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_COMMENTS'',:P40_WITH_COMMENTS);'
,p_attribute_02=>'P40_WITH_COMMENTS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152401192872348511)
,p_name=>'Save Preference 11'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_SUPPORTING_OBJECTS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152401281977348512)
,p_event_id=>wwv_flow_api.id(152401192872348511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_SUPPORTING_OBJECTS'',:P40_WITH_SUPPORTING_OBJECTS);'
,p_attribute_02=>'P40_WITH_SUPPORTING_OBJECTS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152401352326348513)
,p_name=>'Save Preference 12'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_WITH_ACL_ASSIGNMENTS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152401412201348514)
,p_event_id=>wwv_flow_api.id(152401352326348513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_preference(''EXPORT_WITH_ACL_ASSIGNMENTS'',:P40_WITH_ACL_ASSIGNMENTS);'
,p_attribute_02=>'P40_WITH_ACL_ASSIGNMENTS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152401545467348515)
,p_name=>'Cancel Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(138309203978036242)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152401613742348516)
,p_event_id=>wwv_flow_api.id(152401545467348515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152403413057348534)
,p_name=>'Download Application'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(152403355000348533)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152403567548348535)
,p_event_id=>wwv_flow_api.id(152403413057348534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mad.download.downloadJSON(''DOWNLOAD_APPLICATION''',
'  ,{pageItems: ["P40_APPLICATION_NAME","P40_APPLICATION_ID","P40_SPLIT","P40_WITH_DATE","P40_WITH_PUBLIC_REPORTS","P40_WITH_PRIVATE_REPORTS","P40_WITH_NOTIFICATIONS","P40_WITH_TRANSLATIONS"',
'                ,"P40_WITH_PKG_APP_MAPPING","P40_WITH_ORIGINAL_IDS","P40_WITH_NO_SUBSCRIPTIONS","P40_WITH_COMMENTS","P40_WITH_SUPPORTING_OBJECTS","P40_WITH_ACL_ASSIGNMENTS"]},''#DOWNLOAD_APPLICATION'');',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152403643703348536)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOAD_APPLICATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_export_files apex_t_export_files;',
'  l_download_files mad.t_files := mad.t_files();',
'  l_filename varchar2(1024);',
'  l_filename_pattern varchar2(1024) := to_char(sysdate,''YYYY-MM-DD_HH24MISS'') || ''_f'' || :P40_APPLICATION_ID;',
'begin',
'',
'  -- Generate export ',
'  l_export_files := apex_export.GET_APPLICATION (',
'     p_application_id          => :P40_APPLICATION_ID,',
'     p_split                   => case when :P40_SPLIT = ''TRUE'' then true else false end,',
'     p_with_date               => case when :P40_WITH_DATE = ''TRUE'' then true else false end,',
'     p_with_ir_public_reports  => case when :P40_WITH_IR_PUBLIC_REPORTS = ''TRUE'' then true else false end,',
'     p_with_ir_private_reports => case when :P40_WITH_IR_PRIVATE_REPORTS = ''TRUE'' then true else false end,',
'     p_with_ir_notifications   => case when :P40_WITH_IR_NOTIFICATIONS = ''TRUE'' then true else false end,',
'     p_with_translations       => case when :P40_WITH_TRANSLATIONS = ''TRUE'' then true else false end,',
'     p_with_pkg_app_mapping    => case when :P40_WITH_PKG_APP_MAPPING = ''TRUE'' then true else false end,',
'     p_with_original_ids       => case when :P40_WITH_ORIGINAL_IDS = ''TRUE'' then true else false end,',
'     p_with_no_subscriptions   => case when :P40_WITH_NO_SUBSCRIPTION = ''TRUE'' then true else false end,',
'     p_with_comments           => case when :P40_WITH_COMMENTS = ''TRUE'' then true else false end,',
'     p_with_supporting_objects => case when :P40_WITH_SUPPORTING_OBJECTS = ''DEPLOY'' then null else :P40_WITH_SUPPORTING_OBJECTS end,',
'     p_with_acl_assignments    => case when :P40_WITH_ACL_ASSIGMENTS = ''TRUE'' then true else false end  ',
'     --p_components              => null --apex_t_varchar2     DEFAULT NULL ',
'  );',
'',
'  -- Copy array for download',
'  for i in 1..l_export_files.count',
'  loop',
'    l_download_files.extend(1);',
'    l_download_files(i).file_name := l_export_files(i).name;',
'    l_download_files(i).file_content := mad.clob_to_blob(l_export_files(i).contents);',
'    l_download_files(i).mime_type := ''application/octet-stream'';    ',
'  end loop;',
'',
'  -- Generate filename',
'  if :P40_SPLIT = ''TRUE'' then',
'    l_filename := l_filename_pattern || ''.zip'';',
'  else',
'    l_download_files(1).file_name := l_filename_pattern || ''.sql'';',
'  end if;',
'',
'    apex_json.open_object;',
'    apex_json.write(''success'',''TEST'');',
'    apex_json.close_object;',
'',
'  -- download files',
'  mad.download_zip_json(l_download_files, l_filename);',
'',
' ',
'exception ',
'  when others then',
'    apex_json.open_object;',
'    apex_json.write(''error'',sqlerrm);',
'    apex_json.close_all;  ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
