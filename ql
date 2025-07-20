<!-- /apps/your-site/components/copylink/copylink.html -->
<sly data-sly-use.template="/libs/wcm/foundation/components/utils/template.html" />

<div class="copy-link-wrapper">
    <a href="javascript:void(0)" id="copy-link-btn" class="copy-link">
        <!-- Icon via data-sly-resource -->
        <span class="copy-link-icon" aria-hidden="true" data-sly-resource="${'icon' @ resourceType='your-site/components/content/icon'}"></span>

        <!-- Text -->
        <span class="copy-link-text">Copy Link</span>
    </a>

    <!-- Success message -->
    <span id="copy-success-msg" class="copy-success-msg" role="alert" aria-live="polite">Link copied!</span>
</div>
