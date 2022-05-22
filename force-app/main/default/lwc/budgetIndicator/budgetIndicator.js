import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue } from "lightning/uiRecordApi";
import AMOUNT_FIELD from "@salesforce/schema/Budget__c.Amount__c";
import TOTAL_EXPENSE_FIELD from "@salesforce/schema/Budget__c.TotalExpense__c";

export default class BudgetIndicator extends LightningElement {
    @api recordId;
    @wire(getRecord, {recordId: "$recordId", fields: [AMOUNT_FIELD, TOTAL_EXPENSE_FIELD]}) record;
    get amount() {
        return getFieldValue(this.record.data, AMOUNT_FIELD);
    }
    get totalExpense() {
        return getFieldValue(this.record.data, TOTAL_EXPENSE_FIELD);
    }
    get ratio() {
        return (this.totalExpense / this.amount) * 100;
    }
}