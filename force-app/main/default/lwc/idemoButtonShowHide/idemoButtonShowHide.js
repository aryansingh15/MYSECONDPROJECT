import { LightningElement, track } from "lwc";

export default class IdemoButtonShowHide extends LightningElement {
  @track labelvalue = "Show Me";

  eventHandlerButton(event) {
    const label = event.target.label;
    if (label === "Show Me") {
      this.labelvalue = "Hide";
    } else if (label === "Hide") {
      this.labelvalue = "Show Me";
    }
  }
}
