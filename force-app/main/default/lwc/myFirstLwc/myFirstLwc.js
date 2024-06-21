import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class MyFirstLwc extends LightningElement {
  myTitle = "Salesforce Noob";
  // connectedCallback() {
  //   if (this.myTitle) {
  //     let myName = "I am calling my name that is Aryan";
  //   }
  //   window.alert("myName:" + myName);
  //   window.setTimeout(() => {}, 120000);

  // }
  //1st function
  // clickHandler() {
  //   //window.alert("this is testing4 :");
  //   //window.setTimeout(() => {}, 120000);
  //   this.showToast(this.myTitle);
  // }
  // //2nd function
  // showToast(firstFunctionArgumnet) {
  //   const event = new ShowToastEvent({
  //     title: firstFunctionArgumnet,
  //     message: "want to display toast example",
  //     //variant: "success"
  //     variant: "error"
  //   });
  //   this.dispatchEvent(event);
  // }

  // connectedCallback() {
  //   let callMyFunction = this.myFunction(10, 2);
  //   window.alert("callMyFunctionByArrow: " + callMyFunction);
  // }

  // // myFunction(dividend, divisor) {
  // //   return dividend / divisor;
  // // }

  // myFunction = (dividend, divisor) => {
  //   return dividend / divisor;
  // };

  //Decorators: @api/@track/@wire
}
