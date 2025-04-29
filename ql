// Main container
.content-tab_quicklist {
  width: 100%;
  display: flex;
  flex-direction: column;

  // Theme modifiers
  &.theme-default {
    color: #0070d2;

    .uc-quick-list__icon svg,
    .uc-quick-list_caret {
      color: #cc0000;
    }

    .uc-quick-list-item--with-line {
      border-bottom: 1px solid #0070d2;
    }
  }

  &.theme-white {
    color: #ffffff;

    .uc-quick-list__icon svg,
    .uc-quick-list_caret {
      color: #ffffff;
    }

    .uc-quick-list-item--with-line {
      border-bottom: 1px solid #ffffff;
    }
  }

  &.theme-gray {
    color: #000000;

    .uc-quick-list__icon svg,
    .uc-quick-list_caret {
      color: #cc0000;
    }

    .uc-quick-list-item--with-line {
      border-bottom: 1px solid #000000;
    }
  }
}

// Individual list item
.quick-list-item {
  width: 100%;
}

// Wrapper component
.uc-quick-list-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1rem 0;
  text-decoration: none;
  width: 100%;

  &--with-line {
    border-bottom: 1px solid;
  }

  &:hover {
    .uc-quick-list__heading {
      text-decoration: underline;
    }
  }
}

// Clickable wrapper (link version)
.uc-quick-list-item_link {
  display: flex;
  align-items: center;
  width: 100%;
  color: inherit;
  text-decoration: none;
}

// Icon container
.uc-quick-list__icon {
  margin-right: 1rem;
  display: flex;
  align-items: center;

  svg {
    width: 24px;
    height: 24px;
  }
}

// Heading container
.uc-quick-list__heading {
  flex: 1;
  font-size: 1rem;
  font-weight: 600;
}

// Caret arrow
.uc-quick-list_caret {
  margin-left: auto;
  font-size: 1.5rem;
  display: flex;
  align-items: center;
}

// Responsive layout
@media (max-width: 767px) {
  .uc-quick-list-item {
    flex-direction: column;
    align-items: flex-start;
  }

  .uc-quick-list_caret {
    align-self: flex-end;
  }

  .uc-quick-list__icon {
    margin-bottom: 0.5rem;
  }
}

@media (min-width: 768px) and (max-width: 1023px) {
  .uc-quick-list-item {
    flex-direction: row;
  }
}

@media (min-width: 1024px) {
  .uc-quick-list-item {
    flex-direction: row;
  }
}
