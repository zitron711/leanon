.content-tab_quicklist {
  width: 100%;
  display: flex;
  flex-direction: column;
  gap: 1rem;

  // Theme: default
  &.default {
    .uc-quick-list__icon svg { color: #cc0000; } // red icon
    .uc-quick-list__heading { color: #0070d2; }  // blue text
    .uc-quick-list_caret { color: #0070d2; }     // blue arrow
    .uc-quick-list-item.line { border-bottom: 1px solid #0070d2; }
  }

  // Theme: white
  &.white {
    .uc-quick-list__icon svg,
    .uc-quick-list__heading,
    .uc-quick-list_caret {
      color: #ffffff;
    }
    .uc-quick-list-item.line {
      border-bottom: 1px solid #ffffff;
    }
  }

  // Theme: gray
  &.gray {
    .uc-quick-list__icon svg {
      color: #cc0000;
    }
    .uc-quick-list__heading,
    .uc-quick-list_caret {
      color: #000000;
    }
    .uc-quick-list-item.line {
      border-bottom: 1px solid #000000;
    }
  }
}

.quick-list-item {
  width: 100%;
}

.uc-quick-list-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1rem 0;
  width: 100%;
  flex-wrap: nowrap;

  &.line {
    border-bottom: 1px solid;
  }

  a.uc-quick-list-item_ {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex: 1;
    text-decoration: none;
    color: inherit;

    &:hover .uc-quick-list__heading {
      text-decoration: underline;
    }
  }

  // Element without link
  .uc-quick-list-item_element {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex: 1;
  }
}

// Icon (left)
.uc-quick-list__icon {
  margin-right: 1rem;
  display: flex;
  align-items: center;

  svg {
    width: 24px;
    height: 24px;
  }
}

// Heading (middle)
.uc-quick-list__heading {
  flex: 1;
  font-size: 1rem;
  font-weight: 600;
  display: flex;
  flex-direction: column;
}

// Arrow (right)
.uc-quick-list_caret {
  margin-left: 1rem;
  font-size: 1.5rem;
  display: flex;
  align-items: center;
}

// Responsive styles
@media (max-width: 768px) {
  .uc-quick-list-item {
    flex-direction: column;
    align-items: flex-start;

    .uc-quick-list_caret {
      align-self: flex-end;
      margin-top: 0.5rem;
    }
  }

  .uc-quick-list__icon {
    margin-bottom: 0.5rem;
  }
}
