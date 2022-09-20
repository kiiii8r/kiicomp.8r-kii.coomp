import { LightningElement, api, wire } from 'lwc';
import getRelatedContacts from '@salesforce/apex/AccountController.getRelatedContacts';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import EMAIL_FIELD from '@salesforce/schema/Contact.email';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import getContacts from '@salesforce/apex/ContactController.getContacts';
const COLUMNS = [
    { label: 'FirstName', fieldName: NAME_FIELD.fieldApiName, type: 'text' },
    { label: 'LastName', fieldName: TITLE_FIELD.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: EMAIL_FIELD.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: PHONE_FIELD.fieldApiName, type: 'text' }
];

export default class RelatedAccContacts extends LightningElement {
    @api recordId;
    columns = COLUMNS;
    @wire(getRelatedContacts, { accountId: '$recordId' })
    contacts;
}