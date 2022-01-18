<aura:application extends ="force:slds">
    <aura:handler name="firsty" event="c:LE_1020_Eg1_EventEg" action="{!c.showApp}"/>
	<lightning:card title="Application">
        I am Application <p></p>
        I am Application <p></p>
    </lightning:card>
    <c:LC_1020_Eg1_Parent />
</aura:application>