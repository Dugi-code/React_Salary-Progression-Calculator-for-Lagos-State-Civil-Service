# Salary Progression Calculator - Frontend

This is the frontend web application for the Salary Progression Calculator.

## Files

- **`index.html`** - Main frontend application (single-file React component)
- **`demo.html`** - Original demo file (backup)
- **`package.json`** - Node.js package configuration

## Running the Frontend

### Option 1: Simple HTTP Server (Current Method)

```bash
# From the salary-sidebar directory
python -m http.server 3000
```

Then open: http://localhost:3000/index.html

### Option 2: Using Node.js (if you have Node installed)

```bash
# Install dependencies (if needed)
npm install

# Run development server
npm start
```

## Configuration

The frontend is configured to connect to the backend API at:
- **API Base URL**: `http://localhost:8000`
- **API Key**: `CHANGEME` (update in `index.html` if needed)

To change the API endpoint, edit the `API_BASE` constant in `index.html`:

```javascript
const API_BASE = 'http://localhost:8000';  // Change this to your backend URL
const API_KEY = 'CHANGEME';  // Change this to your API key
```

## Making Changes

The frontend is a single-file React application. All code is in `index.html`:

1. **Styles**: CSS is in the `<style>` tag (lines ~10-200)
2. **Components**: React components are defined in the `<script type="text/babel">` tag
3. **Configuration**: API settings are near the top of the script section:
   ```javascript
   const API_BASE = 'http://localhost:8000';  // Backend API URL
   const API_KEY = 'CHANGEME';  // API authentication key
   ```

### File Structure

- **`index.html`** - Main frontend file (your working file)
- **`demo.html`** - Original demo (backup/reference)
- **`SalaryProgressionSidebar.jsx`** - React component (for npm package use)
- **`start_frontend.bat`** / **`start_frontend.sh`** - Quick start scripts

## Features

- Personal Information input
- Employee Information with dynamic grade/step options
- Promotion History management
- Progression Results display
- Session Management (New Session, Continue Session, Export Session)
- Export to Excel functionality

## Backend Integration

The frontend calls the following API endpoints:

- `POST /api/v1/compute` - Calculate salary progression
- `POST /api/v1/export/zamara` - Export to Zamara Excel format

## Notes

- The frontend matches the desktop app (`main.py`) functionality exactly
- All calculations are performed by the backend API
- Results are displayed in the same format as the desktop application

