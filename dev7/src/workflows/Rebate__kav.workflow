<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Article_Publish_Email</fullName>
        <description>Send Article Publish Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>ashish.dev7@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
    <knowledgePublishes>
        <fullName>Publish_current_article</fullName>
        <action>Publish</action>
        <label>Publish current article</label>
        <language>en_US</language>
        <protected>false</protected>
    </knowledgePublishes>
    <knowledgePublishes>
        <fullName>my_publish</fullName>
        <action>Publish</action>
        <label>my publish</label>
        <language>en_US</language>
        <protected>false</protected>
    </knowledgePublishes>
    <knowledgePublishes>
        <fullName>publish_rebate</fullName>
        <action>Publish</action>
        <label>publish rebate</label>
        <language>en_US</language>
        <protected>false</protected>
    </knowledgePublishes>
    <rules>
        <fullName>Send Email when published</fullName>
        <actions>
            <name>Send_Article_Publish_Email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Rebate__kav.PublishStatus</field>
            <operation>equals</operation>
            <value>Published</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>rebate publish</fullName>
        <actions>
            <name>publish_rebate</name>
            <type>KnowledgePublish</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>User.Email</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
