# Aether: Fast NetCDF Explorer

_Aether_ is a modern, high-performance interactive explorer for **NetCDF datasets**, built with **Bokeh**, **Xarray**, and **SciPy**.  
It enables **rapid visualization, time-series analysis, anomaly detection**, and **latitudinal profiling** of large scientific datasets—right in your browser, with zero-friction interactive controls.

---

## 🚀 Features

- **Fast NetCDF File Loading** (local path)
- **Interactive Variable & Dimension Selection**
  - Supports auto-detection of time, 4th, and 5th dims
  - Spatial and non-spatial dimension control
- **Instant Heatmap Viewer**
  - Choose colormaps (Viridis, Plasma, RdBu, more)
  - Robust color scaling (1st–99th percentile by default)
  - Live min/max spinners and palette switching
- **Click-to-Explore Timeseries**
  - Click any point on the map for full temporal analysis
  - Dual timeseries tabs: _raw values_ & _anomalies_
  - Savitzky-Golay filtering, OLS/Theil-Sen trend lines, p-values
- **Interactive Area Averaging**
  - Drag/box-select region to view mean timeseries/trends
- **Annual & Seasonal Cycle Analysis**
- **Latitudinal Mean Profile** (area-weighted)
- **Full dataset info panel**
- **Customizable, accessible UI**
  - All widgets restyled for dark mode, with CSS theming
  - Notes area for in-app documentation

---

## 🎥 Demo Screenshots
<!-- Insert images or GIFs of the UI here if possible -->

---

## ⚡ Quickstart

1. **Clone & create environment**
    ```bash
    git clone https://github.com/YOUR_USERNAME/aether-netcdf-explorer.git
    cd aether-netcdf-explorer
    python3 -m venv aetherenv
    source aetherenv/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt
    ```

2. **Run the app**
    ```bash
    bokeh serve --show aether.py
    ```

3. **Open in browser**
    - Enter your local NetCDF file path (e.g. `/Users/you/data/myfile.nc`)
    - Explore: Select variables, dimensions, slice by time, click any pixel for full timeseries!

---

## 📦 Requirements

- Python 3.8+
- Recommended install:
    ```bash
    pip install bokeh xarray numpy pandas scipy matplotlib cartopy shapely cftime
    ```
- For advanced usage:  
  `jupyterlab`, `ipython` (optional, for interactive notebook usage)

---

## 🧭 Usage Tips

- **File path:** Absolute local path required (use `/path/to/your/file.nc`)
- **Variable & dimension selection:** Dropdowns auto-populate after loading
- **Box selection:** Drag rectangle on heatmap to see area-averaged timeseries
- **Colormap & scaling:** Use palette and min/max for best visual contrast
- **Trend analysis:** Drag endpoints on timeseries to fit OLS or Theil–Sen (toggle tool in plot toolbar)
- **Notes:** Use the notes widget for dataset annotations or workflow logs

---

## 👨‍💻 Credits

Created with ❤️ by [mixstam1821](https://github.com/mixstam1821)

---

## 🔗 License

MIT License (see [LICENSE](./LICENSE))

---

## 🌊 Example Data

Try with freely available climate/earth science datasets:

- [NOAA NCEP Reanalysis](https://psl.noaa.gov/data/gridded/data.ncep.reanalysis.html)
- [CMIP6 output](https://esgf-node.llnl.gov/projects/cmip6/)
- [Copernicus ERA5](https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels-monthly-means)

---

## 🛠️ Development

- PRs, issues, and forks welcome!
- For custom UI/feature requests, open a GitHub issue

---

**Enjoy data exploration at the speed of thought—powered by Aether!**

---
