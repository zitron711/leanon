<!-- /apps/your-site/components/copylink/copylink.html -->
<div class="copy-link-wrapper">
    <a href="javascript:void(0)" id="copy-link-btn" class="copy-link">
        <span class="copy-link-icon" aria-hidden="true">🔗</span>
        <span class="copy-link-text">Copy Link</span>
    </a>
    <span id="copy-success-msg" class="copy-success-msg" role="alert" aria-live="polite">Link copied!</span>
</div>






.copy-link {
    display: inline-flex;
    align-items: center;
    text-decoration: none;
    color: #007ac8;
    font-weight: 500;
    font-size: 14px;
    cursor: pointer;
}

.copy-link:hover {
    text-decoration: underline;
}

.copy-link-icon {
    margin-right: 6px;
    font-size: 16px;
}

/* Hide the link on small screens */
@media (max-width: 768px) {
    .copy-link {
        display: none;
    }
}

.copy-success-msg {
    display: none;
    margin-left: 10px;
    color: green;
    font-size: 14px;
}







document.addEventListener("DOMContentLoaded", function () {
    const copyBtn = document.getElementById("copy-link-btn");
    const successMsg = document.getElementById("copy-success-msg");

    if (!copyBtn) return;

    copyBtn.addEventListener("click", function () {
        const pageURL = window.location.href;

        if (navigator.clipboard && window.isSecureContext) {
            navigator.clipboard.writeText(pageURL)
                .then(() => showSuccess())
                .catch(() => fallbackCopy(pageURL));
        } else {
            fallbackCopy(pageURL);
        }

        function fallbackCopy(text) {
            const textarea = document.createElement("textarea");
            textarea.value = text;
            textarea.style.position = "fixed";
            document.body.appendChild(textarea);
            textarea.focus();
            textarea.select();
            try {
                document.execCommand("copy");
                showSuccess();
            } catch (err) {
                alert("Copy failed.");
            }
            document.body.removeChild(textarea);
        }

        function showSuccess() {
            if (successMsg) {
                successMsg.style.display = "inline";
                setTimeout(() => {
                    successMsg.style.display = "none";
                }, 2000);
            }
        }
    });
});




