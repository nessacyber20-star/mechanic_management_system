# Garage Management System v2

A substantially upgraded garage/workshop management platform for Hostinger + MySQL + Flutter Android.

## Included
- Role-based authentication: admin, mechanic, customer
- Secure bearer tokens with expiry and logout/revocation
- Password change/reset-token foundation
- Customer and mechanic management
- Vehicle CRUD and service history
- Repair jobs, assignment, status history, notes and labour
- Spare-parts inventory, stock movements and low-stock alerts
- Job parts with automatic stock deduction/restoration
- Invoices and invoice items
- M-Pesa Daraja OAuth + STK Push + callback reconciliation
- Payment history and outstanding balances
- Notifications
- Repair/job photo upload endpoint
- Dashboard and reports endpoints
- Admin web SPA with management sections
- Flutter app with role-specific dashboards and workflows
- GitHub Actions workflow to build an Android APK

## Important
This package is production-oriented but you still need to configure your Hostinger database, domain, HTTPS and Daraja credentials. Never commit real Daraja secrets.

## Demo accounts
The seed file uses bcrypt hashes for the password `ChangeMe123!`.
- admin@example.com
- mechanic@example.com
- customer@example.com

Change these credentials immediately after installation.

## Hostinger
1. Create a MySQL database.
2. Import `database/schema.sql`, then `database/seed.sql`.
3. Upload `backend/` so `backend/public` is the public document root if your Hostinger plan supports it; otherwise point the domain/subdomain document root to `backend/public`.
4. Configure environment variables from `.env.example` in your hosting environment. If Hostinger does not expose environment variables, put them in the hosting PHP configuration rather than committing secrets.
5. Enable HTTPS.
6. Set `APP_URL` and `DARAJA_CALLBACK_URL`.
7. Replace `apiBase` in Flutter with your HTTPS API URL.

## Daraja
Use a Safaricom Daraja app and set:
DARAJA_ENV, DARAJA_CONSUMER_KEY, DARAJA_CONSUMER_SECRET, DARAJA_SHORTCODE, DARAJA_PASSKEY, DARAJA_CALLBACK_URL.
The callback must be publicly reachable over HTTPS.

## APK build
The source is Flutter. This environment cannot compile the APK because it has no Flutter/Android SDK and no outbound package download access. The included `.github/workflows/build-apk.yml` builds `app-release.apk` automatically on GitHub Actions when the project is pushed to a repository.

## API highlights
POST /api/auth/login
POST /api/auth/register
POST /api/auth/logout
POST /api/auth/change-password
GET  /api/dashboard
GET  /api/users?role=customer|mechanic
POST /api/users
PATCH /api/users/{id}
GET/POST/PATCH /api/vehicles
GET/POST/PATCH /api/jobs
POST /api/jobs/{id}/parts
POST /api/jobs/{id}/photos
GET/POST/PATCH /api/parts
POST /api/parts/{id}/stock
GET/POST /api/invoices
POST /api/payments/mpesa/stk-push
GET /api/payments
GET /api/notifications
PATCH /api/notifications/{id}/read
