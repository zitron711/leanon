// Main Container
.content-tab_quicklist {
  width: 100%;
  padding: 1rem;
  display: flex;
  flex-direction: column;

  &.theme-default {
    color: #0070d2;

    .quick-list-item_icon svg,
    .uc-quick-list_caret {
      color: #cc0000;
    }

    .divider {
      border-top-color: #0070d2;
    }
  }

  &.theme-white {
    color: #ffffff;

    .quick-list-item_icon svg,
    .uc-quick-list_caret {
      color: #ffffff;
    }

    .divider {
      border-top-color: #ffffff;
    }
  }

  &.theme-gray {
    color: #000000;

    .quick-list-item_icon svg,
    .uc-quick-list_caret {
      color: #cc0000;
    }

    .divider {
      border-top-color: #000000;
    }
  }
}

// Each Quick List Item
.quick-list-item {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
}

// Inner container or link wrapper
.uc-quick-list-item,
.uc-quick-list-item_element,
.uc-quick-list-item_link {
  display: flex;
  align-items: center;
  width: 100%;
  padding: 1rem 0;
  text-decoration: none;
  color: inherit;

  &:hover .uc-quick-list__heading {
    text-decoration: underline;
  }
}

// Icon
.uc-quick-list__icon {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 1rem;

  svg {
    width: 24px;
    height: 24px;
  }
}

// Heading
.uc-quick-list__heading {
  flex: 1;
  font-size: 1rem;
  font-weight: 600;
}

// Arrow
.uc-quick-list_caret {
  margin-left: auto;
  font-size: 1.5rem;
  display: flex;
  align-items: center;
}

// Divider
.divider {
  width: 100%;
  border: 0;
  border-top: 1px solid;
  margin: 0.5rem 0;
}

// Responsive
@media (max-width: 767px) {
  .uc-quick-list-item,
  .uc-quick-list-item_element,
  .uc-quick-list-item_link {
    flex-direction: column;
    align-items: flex-start;
  }

  .uc-quick-list__icon {
    margin-bottom: 0.5rem;
    margin-right: 0;
  }

  .uc-quick-list_caret {
    align-self: flex-end;
  }
}

@media (min-width: 768px) {
  .uc-quick-list-item,
  .uc-quick-list-item_element,
  .uc-quick-list-item_link {
    flex-direction: row;
  }
}
