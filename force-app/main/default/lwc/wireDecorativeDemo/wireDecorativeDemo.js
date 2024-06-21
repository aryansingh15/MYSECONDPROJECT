import { LightningElement, wire, track } from "lwc";
import getPlayerList from "@salesforce/apex/wireDemoClassSalesforce.getPlayerList";

const columns = [
  { label: "Name", fieldName: "Name" },
  { label: "Player record Id", fieldName: "Id" }
];

export default class WireDecorativeDemo extends LightningElement {
  @track columns = columns;
  @track data = [];

  @wire(getPlayerList)
  wiredplayers({ data, error }) {
    if (data) {
      this.data = data;
    } else if (error) {
      console.log("error occured");
    }
  }
}
