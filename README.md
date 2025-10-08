# 🌐 Is It Down? – Flutter Web App

A simple, fast, and responsive Flutter Web app that checks if a website is down for everyone or just you. Includes AdSense integration, legal pages, and an FAQ section to help with Google AdSense approval.

---

## 🚀 Features

- ✅ Website status checker (via HTTP ping)
- 🌙 Dark mode-ready layout
- 📱 Responsive design (mobile + desktop)
- 💰 AdSense widget integration
- 📄 Privacy Policy & Terms and Conditions pages
- ❓ SEO-friendly FAQ section
- 🔥 Firebase Hosting & GitHub Pages deploy-ready
- ⚙️ GitHub Actions workflow for auto-deploy

---

## 🧱 Folder Structure

is-it-down-clone-flutter/ ├── lib/ │ ├── main.dart │ ├── widgets/adsense_widget.dart │ └── sections/faq_section.dart ├── web/ │ ├── index.html │ ├── adview.html │ ├── privacy_policy.html │ └── terms_and_conditions.html ├── .github/workflows/firebase-hosting.yml ├── firebase.json ├── pubspec.yaml └── README.md

3. Run Locally


flutter pub get
flutter run -d chrome


To preview locally:

cd build/web
python -m http.server 8080


🌍 Deploy to Firebase Hosting
1. Install Firebase CLI


npm install -g firebase-tools
firebase login



2. Initialize Firebase

firebase init hosting


3. Deploy

flutter build web
firebase deploy


📄 Legal Pages
privacy_policy.html and terms_and_conditions.html are included in the web/ folder and linked in the footer.
You can generate your own using Termly or PrivacyPolicies.com.



📊 Analytics & Monetization
AdSense widget is embedded via adview.html and adsense_widget.dart
You can add Google Analytics by inserting the GA4 script into web/index.html




📬 Feedback or Help?
Open an issue or contact the project maintainer.



📘 License
MIT License


UptimeIQ – Starter Flutter Web Layout
✅ Features:
Responsive landing page with:
Hero section: Logo, tagline, CTA button
Features section: Icons + descriptions (e.g., Real-Time Monitoring, AI Alerts, Uptime Reports)
Testimonials or Trust section (placeholder)
Footer with links (Privacy, Terms, Contact)
Dark mode toggle
Custom theme using:
Primary: Deep blue (#1A237E)
Accent: Electric green (#00E676)
Logo integration (from the design you approved)
Firebase-ready structure (optional for hosting or auth later)
SEO-friendly meta tags and index.html setup




Here's the logo design for UptimeIQ — featuring a modern, professional look with a stylized "U" and pulse line to represent uptime and intelligence. The color palette uses deep blue and electric green for a trustworthy, tech-forward feel.

The landing page mockup is queued and will be generated next. Once it's ready, I’ll share it with you right away.

Would you like me to:

Package this into a starter Flutter Web layout?
Check domain availability for uptimeiq.io, .app, or .ai?
Generate social media branding assets (e.g., favicon, banner, app icon)?