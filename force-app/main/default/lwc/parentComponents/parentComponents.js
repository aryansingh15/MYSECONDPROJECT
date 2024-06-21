import { LightningElement } from "lwc";

export default class ParentComponents extends LightningElement {
  handleClick() {
    this.template.querySelector("c-child-component").handleChangeValue();
  }
}
