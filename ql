// Base styles
.content-tab_quicklist {
  &.quick-list--icons,
  &.quick-list--arrows {
    // Add any listType specific overrides here
  }

  &.white {
    .quick-list-item {
      border-color: $color-primary-white;

      .uc-quick-list__caret,
      .uc-quick-list__heading,
      .uc-heading__subheadline {
        color: $color-primary-white;
      }
    }
  }

  &.red {
    .uc-heading__subheadline {
      color: $color-black;
    }
  }
}

// Each item
.quick-list-item {
  margin-bottom: $uc-pad-150;
}

// List item container
.uc-quick-list-item {
  display: block;

  &[line="true"] {
    border-bottom: 1px solid $color-secondary-blue-royal-50;

    &:last-child {
      border-bottom: none;
    }
  }

  // Element wrapper inside anchor or div
  &_element {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  // Link version
  &_link {
    text-decoration: none;
    color: inherit;

    &:hover {
      text-decoration: underline;
    }

    &.sticky-banner_content {
      // If there are sticky-banner specific overrides
    }
  }
}

// Icon block (if listType is 'icons')
.uc-quick-list__icon {
  width: rem(36px);
  flex-shrink: 0;
}

// Heading block
.uc-quick-list__heading {
  width: calc(100% - rem(36px)); // icon takes 36px
  .uc-heading__headline {
    @include fontCon(); // Use your font config mixin
  }

  .uc-heading__subheadline {
    font-size: $font-size-14;
    margin-top: $uc-pad-050;
    margin-bottom: $uc-pad-050;
  }
}

// Caret icon (arrows)
.uc-quick-list__caret {
  font-size: $font-size-20;
  color: $color-secondary-blue-royal;

  // Theming handled above
}
