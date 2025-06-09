<div class="selected-cards-wrapper">
  <div class="selected-cards-toggle" aria-label="${model.cardMenuAriaLabel}">
    ${model.menuText}
  </div>

  <div class="selected-cards-dropdown hidden">
    <ul>
      <sly data-sly-test="${model.cardMenu}" data-sly-list.cardMenuMultifield="${model.cardMenu}">
        <li class="selected-cards-dropdown-list">
          <img src="${cardMenuMultifield.imageSmall}" class="card-thumbnail" />
          <span class="selected-cards-dropdown-leadin">${cardMenuMultifield.leadIn}</span>
          <span class="selected-cards-dropdown-title">${cardMenuMultifield.title}</span>
          <span class="tick-icon" data-sly-test="${cardMenuMultifield.selected}"></span>
        </li>
      </sly>
    </ul>
  </div>
</div>
