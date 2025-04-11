# Manual Testing Tips

### 1. XSS
- Test input fields: `<script>alert(1)</script>`, `<img src=x onerror=alert(1)>`
- Use Burp to inject payloads into headers, URL params, forms.
- Bypass filters: `"><svg/onload=alert(1)>`, backticks, hex/UTF-7 encoding.

### 2. CSRF
- Look for actions like password/email change with no token.
- Create a basic CSRF PoC:
```html
<form method="POST" action="http://target.com/change-email">
  <input type="hidden" name="email" value="attacker@evil.com">
  <input type="submit" value="Submit">
</form>

###3. IDOR

    Look for sequential or guessable IDs in URLs:

        /user?id=1001

    Try switching the ID to access others' data.

    Use Burp’s Intruder to fuzz values.

###4. Authentication Bypass

    Try weak creds: admin:admin, test:test, guest:guest

    Try JWT tampering if JWT is used:

        Decode with jwt.io, change role, re-sign if no signature validation.

###5. File Upload

    Try uploading .php, .jsp, or .htaccess disguised as images.

    Upload files and access via known paths or error messages.
