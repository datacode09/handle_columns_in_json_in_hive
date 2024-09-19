SELECT
    element_at(eventattributes, 'exceptionType') AS exceptionType,
    element_at(eventattributes, 'ess_raw_event_timestamp') AS ess_raw_event_timestamp,
    element_at(eventattributes, 'exceptionCat') AS exceptionCat,
    element_at(eventattributes, 'reqAppCode') AS reqAppCode,
    element_at(eventattributes, 'Metadata') AS Metadata,
    element_at(eventattributes, 'updatedByUserId') AS updatedByUserId,
    element_at(eventattributes, 'realTimeProcessing') AS realTimeProcessing,
    element_at(eventattributes, 'ess_event_id') AS ess_event_id,
    element_at(eventattributes, 'pxCreateDateTime') AS pxCreateDateTime,
    element_at(eventattributes, 'ParentCaseStatus') AS ParentCaseStatus,
    element_at(eventattributes, 'eventName') AS eventName,
    element_at(eventattributes, 'consumerCaseId') AS consumerCaseId,
    element_at(eventattributes, 'pyStatusWorktimestamp') AS pyStatusWorktimestamp,
    element_at(eventattributes, 'pyUrgencyWork') AS pyUrgencyWork,
    element_at(eventattributes, 'pyConfirmationNote') AS pyConfirmationNote,
    element_at(eventattributes, 'productType') AS productType,
    element_at(eventattributes, 'ParentCaseID') AS ParentCaseID,
    element_at(eventattributes, 'ess_process_timestamp') AS ess_process_timestamp,
    element_at(eventattributes, 'Comment') AS Comment,
    element_at(eventattributes, 'pyWorkIDPrefix') AS pyWorkIDPrefix,
    element_at(eventattributes, 'pxSuspendReason') AS pxSuspendReason,
    element_at(eventattributes, 'ess_event_timestamp_utc') AS ess_event_timestamp_utc,
    element_at(eventattributes, 'ehTxnId') AS ehTxnId,
    element_at(eventattributes, 'ess_endpoint_type') AS ess_endpoint_type,
    element_at(eventattributes, 'subTypes') AS subTypes,
    element_at(eventattributes, 'ehTxnStatus') AS ehTxnStatus,
    element_at(eventattributes, 'pxCurrentStageLabel') AS pxCurrentStageLabel,
    element_at(eventattributes, 'updatedDateTime') AS updatedDateTime,
    element_at(eventattributes, 'transactionType') AS transactionType,
    element_at(eventattributes, 'eventCode') AS eventCode,
    element_at(eventattributes, 'ess_recon_id') AS ess_recon_id,
    element_at(eventattributes, 'RejectReason') AS RejectReason,
    element_at(eventattributes, 'GoalDateTime') AS GoalDateTime,
    element_at(eventattributes, 'CaseAssignedTime') AS CaseAssignedTime,
    element_at(eventattributes, 'ClientID') AS ClientID,
    element_at(eventattributes, 'DeadlineDateTime') AS DeadlineDateTime,
    element_at(eventattributes, 'ValidSkill') AS ValidSkill,
    element_at(eventattributes, 'pyLabel') AS pyLabel,
    element_at(eventattributes, 'lob') AS lob,
    get_json_object(eventattributes['exp'], '$[0].ehExpStatus') AS ehExpStatus,
    get_json_object(eventattributes['exp'], '$[0].ehExpId') AS ehExpId,
    get_json_object(eventattributes['exp'], '$[0].consumerExpId') AS consumerExpId
FROM
    table
WHERE
    partition_date >= '20240801'
    AND partition_date <= '20240922';
