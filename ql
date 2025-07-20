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
                alert("Failed to copy link");
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
