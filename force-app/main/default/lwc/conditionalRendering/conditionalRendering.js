import { LightningElement } from "lwc";

export default class ConditionalRendering extends LightningElement {
  buttonLabel = "Button 3";
  property1 = false;
  property2 = false;

  handleClick() {
    if (this.property1 === true) {
      this.property1 = false;
      this.buttonLabel = "Button 3";
    } else if (this.property1 === false) {
      this.property1 = true;
      this.buttonLabel = "Button 1";
    }
  }
}
