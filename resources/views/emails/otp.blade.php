<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verification Code</title>
</head>
<body style="font-family: Arial, sans-serif; color:#0f172a;">
    <h2>Verification Code</h2>
    <p>Your one-time code is:</p>
    <div style="font-size:28px;font-weight:bold;letter-spacing:4px;">{{ $code }}</div>
    <p>This code expires in {{ $ttl }} minutes.</p>
    <p>If you did not request this, you can ignore this email.</p>
</body>
</html>


