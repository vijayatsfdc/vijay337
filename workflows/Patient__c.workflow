<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Patient_Info</fullName>
        <description>Patient Info</description>
        <protected>false</protected>
        <recipients>
            <recipient>vijayatsvu@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Test_Template</template>
    </alerts>
    <alerts>
        <fullName>new_Patient_alert</fullName>
        <ccEmails>vijayatsvu@gmail.com</ccEmails>
        <description>new Patient alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>vijayatsvu@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Test_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Doctor_Patient_List_update</fullName>
        <field>Patients_List__c</field>
        <formula>Doctor_Assigned_del__r.Patients_List__c + &apos; &apos; + Name</formula>
        <name>Doctor Patient List update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>Doctor_Assigned_del__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Adding to Patient List</fullName>
        <actions>
            <name>Doctor_Patient_List_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Patient__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>new_Patient_alert</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Patient__c.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
