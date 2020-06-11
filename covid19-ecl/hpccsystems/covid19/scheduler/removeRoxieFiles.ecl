IMPORT STD;

// Delete all myroxie Files
// files_list := STD.File.LogicalFileList( );
// Filenames := files_list( STD.STR.FIND(cluster, 'myroxie') <> 0);
// APPLY(Filenames,STD.FILE.DeleteLogicalFile('~'+Filenames.name));

// List all the Queries
// WUListQueries  
// WUQuerysetQueryAction

username := 'xulili01';
userPW := 'Q4dRtHRF';
CreateAuthHeaderValue(STRING username, STRING userPW) := IF
(
    TRIM(username, ALL) != '',
    'Basic ' + Std.Str.EncodeBase64((DATA)(TRIM(username, ALL) + ':' + TRIM(userPW, LEFT, RIGHT))),
    ''
);

CreateESPURL(STRING explicitURL) := FUNCTION
trimmedURL := TRIM(explicitURL, ALL);
myESPURL := IF(trimmedURL != '', trimmedURL, Std.File.GetEspURL()) + '/WsWorkunits/ver_=1.74';
RETURN myESPURL;
END;

RunArgLayout := RECORD
STRING      name    {XPATH('Name')};
STRING      value   {XPATH('Value')};
END;

RunResultsLayout := RECORD
STRING  wuid    {XPATH('Wuid')};
STRING  state   {XPATH('State')};
STRING  results {XPATH('Results')};
END;

PublishResultsLayout := RECORD
STRING  wuid    {XPATH('Wuid')};
STRING  results {XPATH('results')};
STRING  QuerySet {XPATH('QuerySet')};
STRING  QueryName {XPATH('QueryName')};
STRING  QueryId {XPATH('QueryId')};
END;


myESPURL := CreateESPURL('');
auth := CreateAuthHeaderValue(username, userPW);

QueryResultLayout := RECORD
    STRING  rWUID       {XPATH('Wuid')};
    STRING  rID    {XPATH('Id')};
    STRING  rNAME       {XPATH('Name')};
    // STRING  NumberOfQueries    {XPATH('NumberOfQueries')};
END;

// Find the latest compiled version of a workunit that matches the
// given jobName
queryResults := SOAPCALL
    (
        myESPURL,
        'WUListQueries',
        {
            STRING Activated {XPATH('Activated')} := '1';                 
        },
        DATASET(QueryResultLayout),
        XPATH('WUListQueriesResponse/QuerysetQueries/QuerySetQuery'),
        HTTPHEADER('Authorization', auth),
        TIMEOUT(60), ONFAIL(SKIP)
    );

queryResults;

//{"WUQuerySetQueryActionResponse": {"Action": "Delete", "QuerySetName": "roxie", "Results": {"Result": [{"QueryId": "simplequery.1", "Suspended": null, "Success": true, "Code": null, "Message": null}]}}}

deleteResultLayout := RECORD
    STRING  rQueryId       {XPATH('QueryId')};
    STRING  rSuspended     {XPATH('Suspended')};
    STRING  rSuccess       {XPATH('Success')};
    STRING  rCode          {XPATH('Code')};
    STRING  rMessage       {XPATH('Message')};
END;


ActionLayout := RECORD
    STRING rQueryID {XPATH('QueryId')};
    // STRING rSuspended {XPATH('ClientState/Suspended')};
END;


queries2delete := PROJECT(queryResults, TRANSFORM(ActionLayout , SELF.rQueryID := LEFT.rID));
OUTPUT(queries2delete);
deleteResults := SOAPCALL
    (
        myESPURL,
        'WUQuerysetQueryAction',
        {
            // STRING pAction {XPATH('Action')} := 'Deactivate';
            STRING pAction {XPATH('Action')} := 'Delete';
            STRING pQuerySetName {XPATH('QuerySetName')} := 'roxie';
            DATASET(ActionLayout) pNames {XPATH('Queries/Query')} := queries2delete;
        },
        DATASET(deleteResultLayout),
        XPATH('WUQuerysetActionResponse/Results/Result'),
        HTTPHEADER('Authorization', auth),
        TIMEOUT(60), ONFAIL(SKIP)
    );

// deleteResults;























// Using WUQuerysetAliasAction
// queryAliasResultLayout := RECORD
//     STRING  rName       {XPATH('Name')};
//     STRING  rSuccess       {XPATH('Success')};
//     STRING  rCode          {XPATH('Code')};
//     STRING  rMessage       {XPATH('Message')};
// END;


// aliasLayout := RECORD
//     STRING Name {XPATH('Name')};
// END;
// queries2delete := PROJECT(queryResults, TRANSFORM(aliasLayout, SELF.name := LEFT.rNAME));
// OUTPUT(queries2delete);
// deleteResults := SOAPCALL
//     (
//         myESPURL,
//         'WUQuerysetAliasAction',
//         {
//             STRING pAction {XPATH('Action')} := 'Deactivate';
//             // STRING pAction {XPATH('Action')} := 'Delete';
//             STRING pQuerySetName {XPATH('QuerySetName')} := 'roxie';
//             DATASET(aliasLayout) pNames {XPATH('Aliases/Alias')} := queries2delete;
//         },
//         DATASET(queryAliasResultLayout ),
//         XPATH('WUQuerysetAliasActionResponse/Results/Result'),
//         HTTPHEADER('Authorization', auth),
//         TIMEOUT(60), ONFAIL(SKIP)
//     );

// deleteResults;
