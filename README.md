# Map Sharing Site

This project allows users to share interactive maps with external users. The site features a SWOT Gauges Map displaying hydrological monitoring stations across South America.

## Project Structure

```
MAP/
├── index.html           # Main HTML page for the map-sharing site
├── map.html            # Shareable map that users can view directly
├── readme.html         # Landing page with map overview
├── styles.css          # Stylesheet for enhanced presentation
├── .gitignore          # Specifies files and directories to ignore in Git
└── README.md           # Documentation for the project
```

## Features

- **Interactive Map Display**: Visual representation of SWOT satellite data and ground monitoring stations
- **Easy Sharing**: Copy-paste URLs to share maps with external users
- **Multi-Region Coverage**: Data from Peru, Argentina, Colombia, and Brazil
- **Mobile Responsive**: Works on desktop and mobile devices
- **Direct Access**: Maps can be accessed directly without the main interface

## Setup Instructions

1. **Clone the Repository**: 
   ```bash
   git clone https://github.com/laijo85/MAP.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd MAP
   ```

3. **Open the Site**:
   - Open `readme.html` in a web browser for the landing page
   - Open `index.html` for the full map sharing interface
   - Open `map.html` directly for the standalone map view

## Sharing the Map

### Method 1: Using the Main Interface
1. Open `index.html` in your web browser
2. Use the "Copy URL" button to copy the shareable map link
3. Share the copied URL with others
4. Recipients can access the map directly without setup

### Method 2: Direct Sharing
- Share the direct URL: `http://<your-domain>/map.html`
- This opens the map in full-screen mode
- Perfect for embedding or standalone viewing

### Method 3: Email Sharing
- Use the "Share via Email" button in the main interface
- Pre-fills email with map URL and description
- Recipients get a ready-to-use link

## Map Features

- **Coverage Areas**: Peru 🇵🇪, Argentina 🇦🇷, Colombia 🇨🇴, Brazil 🇧🇷
- **Data Sources**: SWOT satellite data + Ground monitoring stations
- **Interactive Elements**: Click on region cards for information
- **Keyboard Shortcuts**: 
  - `Ctrl+S` (or `Cmd+S`) to copy share URL when viewing map.html
  - `Ctrl+Shift+C` (or `Cmd+Shift+C`) to copy share URL from main interface

## Technical Details

- **Map Center**: Latitude -9.2°, Longitude -75.0° (Peru/Brazil region)
- **No External Dependencies**: Self-contained for reliable sharing
- **Responsive Design**: Adapts to different screen sizes
- **Cross-Browser Compatible**: Works in all modern browsers

## Usage Examples

### For Web Hosting
If hosting on a web server:
```
https://yourdomain.com/index.html  # Main interface
https://yourdomain.com/map.html    # Direct map access
```

### For Local Development
```bash
# Start a local server (Python 3)
python3 -m http.server 8080

# Access the site at:
http://localhost:8080/readme.html   # Landing page
http://localhost:8080/index.html    # Main interface  
http://localhost:8080/map.html      # Direct map
```

## Customization

- **Styling**: Modify `styles.css` to change appearance
- **Map Content**: Edit `map.html` to update regions or data
- **Interface**: Customize `index.html` for different sharing options

## Browser Support

- ✅ Chrome/Chromium (recommended)
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ✅ Mobile browsers

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test across different browsers
5. Submit a pull request