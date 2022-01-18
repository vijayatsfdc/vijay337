<aura:application extends="force:slds">
	<lightning:layout multipleRows="true">
    	<lightning:layoutItem size="12">
        	<lightning:card title="Search">
                <c:LC_1028_Eg1_getAccId/>
            </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size ="6" padding="around-small">
        	<lightning:card title="Contacts List">
                <c:LC_1028_Eg1_dispCont/>
            </lightning:card>
        </lightning:layoutItem>
        <lightning:layoutItem size ="6" padding="around-small">
        	<lightning:card title="Oppurtunties List">
                <c:LC_1028_Eg1_dispOpties/>
            </lightning:card>
        </lightning:layoutItem>
    </lightning:layout>
</aura:application>