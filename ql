<div class="${model.calculatorID}-custom-dropdown-wrapper custom-dropdown-wrapper" 
     aria-label="${model.tiersMenuAriaLabel}">

    <label for="${model.calculatorID}-dropdown" class="visually-hidden">
        ${model.tiersMenuAriaLabel}
    </label>

    <select
        id="${model.calculatorID}-dropdown"
        class="${model.calculatorID}-custom-dropdown-toggle custom-dropdown-toggle hx-icon-interactive-caret-down"
        name="${model.calculatorID}-dropdown"
        aria-label="${model.tiersMenuAriaLabel}"
    >
        <sly
            data-sly-test="${model.addTier}"
            data-sly-list.addTierMultifield="${model.addTier}"
        >
            <option
                class="${model.calculatorID}-custom-dropdown-list-option custom-dropdown-list-option ${model.calculatorID}-custom-dropdown-list-option-${addTierMultifield.tierNameSlug}"
                value="${addTierMultifield.tierNameCleaned}"
                ${addTierMultifield.tierNameCleaned == model.defaultTier ? 'selected' : ''}
            >
                ${addTierMultifield.tierNameCleaned}
            </option>
        </sly>
    </select>
</div>
