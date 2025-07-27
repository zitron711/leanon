<input type="number"
  class="monthly-spend monthly-spend_index-${itemList.index}"
  data-calculation="${item.calculation}"
  placeholder="${model.spendInput1Nullvalue}"
  aria-label="${model.spendInput1AriaLabel}"
  value="${model.spendInput1}"
  onkeydown="return event.key.match(/[0-9.]|Backspace|Delete|ArrowLeft|ArrowRight|Tab/)"
  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
/>


/* Chrome, Safari, Edge */
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type="number"] {
  -moz-appearance: textfield;
}
