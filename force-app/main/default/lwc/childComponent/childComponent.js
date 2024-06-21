import { LightningElement, api } from "lwc";

export default class ChildComponent extends LightningElement {
  @api itemName = "New Lwc Components";

  @api handleChangeValue() {
    this.itemName = "salesforce LWC demo";
  }
}
