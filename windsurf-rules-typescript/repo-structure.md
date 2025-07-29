---
trigger: model_decision
description: To better understand Repository Structure
---

# Repository Structure

## Command
- use bash command `tree` to generate overview of repo:
```
tree -I 'node_modules|.git|dist|build|__pycache__'
```
- always check `Structure` before create duplicated subfolders or not needed extra folders which allready exist in `structure`

## Example of App Structure

```text
├── app/                  # Next.js App Router for the frontend
│   ├── api/              # API routes (e.g., for internal Next.js API)
│   │   └── auth/         # Authentication related API routes
│   │       └── [...nextauth]/route.ts
│   ├── (auth)/           # Grouped routes for authentication pages (e.g., login, signup)
│   │   └── login/page.tsx
│   │   └── signup/page.tsx
│   ├── dashboard/        # Main application dashboard
│   │   └── page.tsx
│   ├── services/         # Pages for managing services
│   │   └── [serviceId]/  # Dynamic routes for individual service management
│   │       └── page.tsx
│   ├── layout.tsx        # Root layout for the application
│   └── globals.css       # Global CSS styles (including Tailwind CSS)
├── components/           # Reusable React components
│   ├── ui/               # Shadcn UI components (already provided)
│   │   └── button.tsx
│   │   └── card.tsx
│   │   └── ...
│   └── custom/           # Custom components specific to Simple-UI
│       └── service-card.tsx
│       └── user-table.tsx
├── contexts/             # Containing the state which has to be shared across components
│   └── settings.tsx
├── hooks/                # Custom React hooks
│   └── use-mobile.tsx
│   └── use-toast.ts
├── lib/                  # Utility functions and libraries
│   └── utils.ts          # General utilities (e.g., cn function)
│   └── api.ts            # API client for interacting with backend services
├── public/               # Static assets (images, fonts, etc.)
│   ├── images/
│   │   └── placeholder.svg
│   └── vercel.svg
├── scripts/              # Executable scripts (e.g., database seeding, migrations)
│   └── seed-db.js
├── types/                # TypeScript type definitions
│   └── service.ts
│   └── user.ts
├── .env                  # Environment variables (local)
├── .env.development      # Development environment variables
├── .env.production       # Production environment variables
├── .eslintrc.json        # ESLint configuration
├── next.config.mjs       # Next.js configuration
├── package.json          # Project dependencies and scripts
├── tailwind.config.ts    # Tailwind CSS configuration
├── tsconfig.json         # TypeScript configuration
└── README.md             # Project README
```

### Important: whenever a folder is created or removed, edit it here.
