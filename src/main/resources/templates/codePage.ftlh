<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodeShareBox - Code Snippet</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/highlight.js@11.2.0/styles/default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/highlightjs-themes@1.0.0/androidstudio.css" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/styles/vs2015.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/highlight.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/highlightjs-line-numbers.js/dist/highlightjs-line-numbers.min.js"></script>

    <script>
        hljs.initHighlightingOnLoad();
        hljs.highlightAll(); // initialize highlighting
        hljs.initLineNumbersOnLoad(); // apply line numbering
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<style>
    /* Reset default margin and padding */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    html, body {
        height: 100%;
    }


        .content-wrapper {
        max-width: 1000px;
        margin: 0 auto;
        padding: 2rem;
        }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="0 0 400 400"><path d="M0 10 L200 200 L400 10 Z" fill="%230c1b39"/><circle cx="60" cy="40" r="15" fill="%230c0f21"/><circle cx="120" cy="80" r="15" fill="%230c0f21"/><circle cx="180" cy="120" r="15" fill="%230c0f21"/><circle cx="240" cy="160" r="15" fill="%230c0f21"/><circle cx="300" cy="200" r="15" fill="%230c0f21"/><circle cx="360" cy="240" r="15" fill="%230c0f21"/><line x1="60" y1="40" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="120" y1="80" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="180" y1="120" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="240" y1="160" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="300" y1="200" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="360" y1="240" x2="200" y2="200" stroke="%23666" stroke-width="2"/></svg>') repeat;
        background-color: #1a1a1a;
        margin: 0;
        min-height: 100vh;
    }

    .header {
                background-color: #0c1b39;
                color: #fff;
                padding: 20px;
                text-align: left;
                cursor: pointer;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }
    .logo {
                width: 40px;
                height: auto;
                margin-right: 10px;
            }
            .logo-text {
                font-size: 28px;
                font-weight: bold;
                color: #fff;
                text-decoration: none;
                transition: color 0.3s ease;
            }

            .logo-text:hover {
                color: #ff9900;
            }
            .navigation {
                display: flex;
                align-items: center;
            }
            .navigation a {
                color: #fff;
                text-decoration: none;
                margin: 0 20px;
                font-weight: bold;
                letter-spacing: 1px;
                transition: color 0.3s ease;
            }
            .navigation a:hover {
                color: #ff9900;
            }
    .hljs-comment {
        color: #888;
        font-style: italic;
    }

    .hljs-ln td {
        padding-left: 0.7em;
    }


    .copy-button {
        --tw-text-opacity: 1;
        color: rgba(217,217,227,var(--tw-text-opacity));
        background-color: background-color: rgba(217,217,227,var(--tw-bg-opacity));
        -webkit-appearance: button;
        background-color: transparent;
        background-image: none;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        padding: 0.2rem 0.5rem;
        transition: background-color 0.2s ease;
    }

    .copy-button:hover {
        background-color: #444; /* Slightly darker on hover */
    }
    .load-date {
        display: block;
        margin-top: 0.5rem;
        color: #777;
    }

    .code-info {
       display: flex;
       align-items: center;
       font-feature-settings: normal;
       font-variation-settings: normal;
       font-weight: 400;
       border: 0 solid #d9d9e3;
       justify-content: space-between;
       border-top-left-radius: .375rem;
       border-top-right-radius: .375rem;
       background-color: rgba(52, 53, 65, 1);
       padding: .5rem 1rem;
       font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
       font-size: .75rem;
       line-height: 1rem;
       color: rgba(217, 217, 227, 1);
       margin-bottom: -0.92578120232rem;
      }

    .copy-section {
        display: flex;
        align-items: center; /* Align icon and text vertically */
    }

    .icon {
        display: flex;
        align-items: center;
        color: #aaa;
    }

    .text {
        color: #aaa;
        padding-left: 0.5rem;
    }

</style>
<body>
<div class="header">
    <a href="/" class="logo-text">
        <img src="https://pastebin.com/themes/pastebin/img/pastebin_logo_side_outline_support_ukraine.webp" alt="CodeShareBox Logo" class="logo">
        CodeShareBox
    </a>
    <div class="navigation">
        <a href="/">Home</a>
        <a href="/latest">Latest CodeShares</a>
        <a href="/about">About</a>
    </div>
</div>
<div class="content-wrapper">
    <div class="code-container">
        <span id="load_date" class="load-date">${date}</span>
        <div class="code-info">
            <div class="icon" title="Size Of File"><i class="fa fa-calculator" aria-hidden="true"></i>
                <div class="text">
                    ${size} KB
                </div>
            </div>
            <#if timeRemaining gt 0>
            <div class="icon" title="Time Remaining"><i class="fa fa-hourglass" aria-hidden="true"></i>
                <div class="text">
                    Code expires in <span id="live_countdown">${timeRemaining}</span> secs
                </div>
            </div>
            </#if>
          <#if views gte 0 \and initialViews gt 0 >
        <div class="icon" title="Views Restriction"><i class="fa fa-eye" aria-hidden="true"></i>
            <div class="text">
                ${views} more views alloted
            </div>

        </div>
    </#if>
    <div class="copy-section">
        <button class="copy-button" onclick="copyCode(this)">Copy code</button>
    </div>
</div>

<pre id="code_snippet" class="code-block">
        <code>${code}</code>
    </pre>
</div>

<script>
    function copyCode(button) {
        const codeSnippet = document.getElementById('code_snippet');
        const range = document.createRange();
        range.selectNode(codeSnippet);
        window.getSelection().removeAllRanges();
        window.getSelection().addRange(range);
        document.execCommand('copy');
        window.getSelection().removeAllRanges();
        // Update button text
        const copyButton = document.querySelector('.copy-button');
        copyButton.textContent = 'Copied!';
        setTimeout(() => {
          copyButton.textContent = 'Copy Code';
        }, 2000);
    }

    // --- BOTH LOGICS SAFELY INSIDE THE EVENT LISTENER ---
    window.addEventListener('DOMContentLoaded', (event) => {

        // 1. COUNTDOWN LOGIC
        const countdownElement = document.getElementById('live_countdown');

        if (countdownElement) {
            let timeLeft = parseInt(countdownElement.innerText);

            const timer = setInterval(function() {
                timeLeft--; // Subtract 1 second
                countdownElement.innerText = timeLeft; // Update UI

                if (timeLeft <= 0) {
                    clearInterval(timer); // Stop the clock
                    window.location.reload(); // Refresh to trigger the 404
                }
            }, 1000); // 1000ms = 1 second
        }

        // 2. LIVE CLOCK LOGIC
        const dateElement = document.getElementById('load_date');
        if (dateElement) {
            setInterval(function() {
                const now = new Date();

                // Format the date to perfectly match your Java backend formatter
                const options = {
                    weekday: 'long', year: 'numeric', month: 'long', day: 'numeric',
                    hour: 'numeric', minute: '2-digit', second: '2-digit', hour12: true
                };

                // Generate the string and remove the " at " that some browsers automatically insert
                let formattedString = now.toLocaleString('en-US', options).replace(' at ', ' ');

                dateElement.innerText = formattedString;
            }, 1000); // Update every 1 second
        }

    });
</script>
</body>

</html>



