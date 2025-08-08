<label for="${model.calculatorID}-dropdown" class="visually-hidden">
    ${model.tiersMenuAriaLabel}
</label>

<select
    id="${model.calculatorID}-dropdown"
    name="${model.calculatorID}-dropdown"
    aria-label="${model.tiersMenuAriaLabel}"
>
    <sly
        data-sly-test="${model.addTier}"
        data-sly-list.addTierMultifield="${model.addTier}"
    >
        <option
            value="${addTierMultifield.tierNameCleaned}"
            ${addTierMultifield.tierNameCleaned == model.defaultTier ? 'selected' : ''}
        >
            ${addTierMultifield.tierNameCleaned}
        </option>
    </sly>
</select>
