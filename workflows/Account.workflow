<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Account_created</fullName>
        <ccEmails>vijayatsvu@gmail.com</ccEmails>
        <ccEmails>vijayatsvu1@gmail.com</ccEmails>
        <ccEmails>vijayatsvu2@gmail.com</ccEmails>
        <ccEmails>vijayatsvu3@gmail.com</ccEmails>
        <ccEmails>vijayatsvu4@gmail.com</ccEmails>
        <description>New Account created</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Test_Template</template>
    </alerts>
    <rules>
        <fullName>MailTrigger</fullName>
        <actions>
            <name>New_Account_created</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
