// ==UserScript==
// @name         ChatGPT Sensitive Information Detection
// @namespace    https://github.com/SecFathy
// @version      0.1
// @description  Detects if sensitive information, such as credit card numbers, access tokens, and API keys, is entered into ChatGPT and alerts the user.
// @author       Mohammed Fathy (Secfathy)
// @match        https://chat.openai.com/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Define the sensitive information patterns to match against.
    const sensitiveInfoPatterns = [
        // Credit card patterns
        /^3[47][0-9]{13}$/, // Amex Card
        /^(6541|6556)[0-9]{12}$/, // BCGlobal
        /^389[0-9]{11}$/, // Carte Blanche Card
        /^3(?:0[0-5]|[68][0-9])[0-9]{11}$/, // Diners Club Card
        /^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$/, // Discover Card
        /^63[7-9][0-9]{13}$/, // Insta Payment Card
        /^(?:2131|1800|35\d{3})\d{11}$/, // JCB Card
        /^9[0-9]{15}$/, // KoreanLocalCard
        /^(6304|6706|6709|6771)[0-9]{12,15}$/, // Laser Card
        /^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}$/, // Maestro Card
        /^(5[1-5][0-9]{14}|2(22[1-9][0-9]{12}|2[3-9][0-9]{13}|[3-6][0-9]{14}|7[0-1][0-9]{13}|720[0-9]{12}))$/, // Mastercard
        /^(6334|6767)[0-9]{12}|(6334|6767)[0-9]{14}|(6334|6767)[0-9]{15}$/, // Solo Card
        /^(4903|4905|4911|4936|6333|6759)[0-9]{12}|(4903|4905|4911|4936|6333|6759)[0-9]{14}|(4903|4905|4911|4936|6333|6759)[0-9]{15}|564182[0-9]{10}|564182[0-9]{12}|564182[0-9]{13}|633110[0-9]{10}|633110[0-9]{12}|633110[0-9]{13}$/, // Switch Card
        /^(62[0-9]{14,17})$/, // Union Pay Card
        /^4[0-9]{12}(?:[0-9]{3})?$/, // Visa Card
        /^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14})$/, // Visa Master Card

        // Access tokens
        /^[1-9][0-9]+-[0-9a-zA-Z]{40}$/, // Twitter Access Token
        /^EAACEdEose0cBA[0-9A-Za-z]+$/, // Facebook Access Token
        /^[0-9a-fA-F]{7}\.[0-9a-fA-F]{32}$/, // Instagram Access Token
        /^AIza[0-9A-Za-z-_]{35}$/, // Google API Key
        /^[0-9a-zA-Z-_]{24}$/, // Google Secret Key
        /^4\/[0-9A-Za-z-_]+$/, // OAuth 2.0 Auth Code
        /^1\/[0-9A-Za-z-]{43}$|^1\/[0-9A-Za-z-]{64}$/, // 1/[0-9A-Za-z-]{43}|1/[0-9A-Za-z-]{64}
        /^ya29\.[0-9A-Za-z-_]+$/, // OAuth 2.0 Access Token
        /^ghp_[a-zA-Z0-9]{36}$/, // Personal Access Token (Classic)
        /^github_pat_[a-zA-Z0-9]{22}_[a-zA-Z0-9]{59}$/, // Personal Access Token (Fine-Grained)
        /^sk_live_[0-9a-zA-Z]{24}$/, // Stripe
        /^55[0-9a-fA-F]{32}$/, // Twilio Access Token
        /^key-[0-9a-zA-Z]{32}$/, // Mailgun Access Token
        /^xoxb-[0-9]{11}-[0-9]{11}-[0-9a-zA-Z]{24}$/, // Slack Access Token

        // API keys
        /^AKIA[0-9A-Z]{16}$/, // Amazon Access ID Key
        /^[0-9a-zA-Z/+]{40}$/, // Amazon Secret Key
        /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/, // Google Cloud Platform OAuth 2.0
        /^[A-Za-z0-9_]{21}--[A-Za-z0-9_]{8}$/, // Google Cloud
        /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/, // Heroku API Key
        /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/ // Heroku OAuth 2.0
    ];

    // Add an event listener for the 'input' event on the text area.
    document.querySelector('textarea').addEventListener('input', function() {
        // Get the value of the text area.
        const text = this.value;

        // Check if the text matches any of the sensitive information patterns.
        for (const pattern of sensitiveInfoPatterns) {
            if (pattern.test(text)) {
                // If sensitive information is found, alert the user.
                alert('Please do not enter sensitive information, such as credit card numbers, access tokens, or API keys, into ChatGPT.');
                break;
            }
        }
    });
})();
