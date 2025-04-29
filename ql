<div data-sly-test="${wcmmode.edit || wcmmode.preview}" class="aem-helper">
    Edit: Quick List Component
</div>

<sly data-sly-use.model="com.bankofamerica.flagship.core.components.interfaces.content.QuickList" />

<div class="content-tab_quicklist ${model.colorTheme} quick-list--${model.listType}">
    <sly data-sly-list.multifield="${model.quickListMultifield}">
        <div class="quick-list-item" id="quick-list-${multifieldList.index}">
            <sly data-sly-test="${multifield.urlPath}">
                <a class="uc-quick-list-item sticky-banner_content uc-quick-list-item_link"
                   href="${multifield.urlPath @ context='uri'}"
                   target="${multifield.target}"
                   aria-label="${multifield.ariaLabel}">
                    <sly data-sly-call="${multifieldContent @ model=model, multifield=multifield, index=multifieldList.index}" />
                </a>
            </sly>

            <sly data-sly-test="${!multifield.urlPath}">
                <div class="uc-quick-list-item_element" aria-label="${multifield.ariaLabel}">
                    <sly data-sly-call="${multifieldContent @ model=model, multifield=multifield, index=multifieldList.index}" />
                </div>
            </sly>

            <sly data-sly-test="${model.showDividingLines && !multifieldList.last}">
                <hr class="divider" />
            </sly>
        </div>
    </sly>
</div>

<!-- Item Template -->
<template data-sly-template.multifieldContent="${@ model, multifield, index}">
    <div class="uc-quick-list__icon" data-sly-test="${model.listType == 'icons' && model.showIcon}">
        <sly data-sly-resource="${'icon-' + index @ resourceType='flagship/components/content/elements/icon', requestAttributes={ 'iconName': multifield.iconName }}"/>
    </div>

    <div class="uc-quick-list__heading">
        <sly data-sly-resource="${'headingGroup-' + index @ resourceType='flagship/components/content/elements/header'}" />
    </div>

    <span data-sly-test="${model.showArrows}" class="uc-quick-list__caret uc-icon uc-icon-action-right"></span>
</template>
