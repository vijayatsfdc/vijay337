<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>newStudentAlert</fullName>
        <description>newStudentAlert</description>
        <protected>false</protected>
        <recipients>
            <recipient>vijayatsvu@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>TenthSpecial</fullName>
        <field>SpecialBatch__c</field>
        <literalValue>1</literalValue>
        <name>TenthSpecial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>KPS student</fullName>
        <actions>
            <name>newStudentAlert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Student__c.Class__c</field>
            <operation>equals</operation>
            <value>Fifth</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TenthMontessori</fullName>
        <actions>
            <name>TenthSpecial</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Student__c.Class__c</field>
            <operation>equals</operation>
            <value>Tenth</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
