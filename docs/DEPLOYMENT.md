# Deployment checklist

## Hostinger
- Create MySQL database and user.
- Import schema.sql then seed.sql.
- Point an API subdomain document root to backend/public.
- Enable HTTPS.
- Configure environment variables.
- Verify GET/POST routes using HTTPS.

## Daraja
- Create/configure the Daraja app.
- Set production credentials only on the server.
- Set callback URL to `/api/mpesa/callback`.
- Test with sandbox before production.

## Flutter
- Replace `apiBase` in `flutter-app/lib/main.dart`.
- Set `demoMode=false`.
- Run `flutter pub get`.
- Build with `flutter build apk --release`.
