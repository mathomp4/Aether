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
- **Annual Cycle Analysis**
- **Latitudinal Mean Profile** (area-weighted)
- **Full dataset info panel**
- **Notes area for in-app documentation**

---

## 🎥 Screenshots and Instructions
<!-- Insert images or GIFs of the UI here if possible -->
![Aether UI](assets/ae1.png)
![Aether UI](assets/ae2.png)
![Aether UI](assets/ae3.png)

- Copy the full filepath (/home/michael/myfile.nc) or right click on .nc file select copy and then just paste in the input field (e.g. file:///home/michael/myfile.nc).
- Press the button Load File and the file will load.
- By default Ather understand the common lat lon time dimensions, but please ensure that all the dimensions and the variable are that you want to investigate.
![Aether UI](assets/ae1.gif)

- After the file loading, you can interact with the map and explore the distribution of the variable.
- By clicking on a specific point or selecting a box area you can get the corresponding spatial-averaged timeseries. Anomalies of these timeseries are also computed.
- Linear trend line and low pass filtered data (Savitzky-Golay filter) are applied to the timeseries.
![Aether UI](assets/ae2.gif)

- The user can select a specific range of the timeseries' date range and get the corresponding trend.
- Animation of the map, select a specific data or a time slider are also supported.
- The user can change the colormap and its min max values.
![Aether UI](assets/ae3.gif)
![Aether UI](assets/ae4.gif)
![Aether UI](assets/ae5.gif)
![Aether UI](assets/ae6.gif)
-- The annual cycle will appear only with monthly data.

---

## ⚡ Quickstart

1. **Clone & create environment**
    ```bash
    git clone https://github.com/mixstam1821/aether-netcdf-explorer.git
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

## Using Docker

```bash
git clone https://github.com/mixstam1821/aether-netcdf-explorer.git
cd aether-netcdf-explorer
docker build -t aether-app .
docker run -p 9285:9285 -v /path/to/your/netcdf/data:/data aether-app
```

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
```bash
🚀 Introducing Aether: Your Fast, Interactive NetCDF Explorer 🌏

I’ve always admired NASA’s Panoply for making multidimensional scientific data explorable. But after years of working with NetCDF files, I found myself craving more:

Smoother animation playback

Instant timeseries analysis, directly from map clicks

Way faster performance on modern datasets

And honestly? Just more interactivity—less “static” and more “alive.”

That’s why I built Aether.

✨ What’s special?

Real-time map animation: Watch your NetCDF data come alive, step by step.

One-click timeseries extraction: Click anywhere on the map to instantly pull up time series and anomaly charts, with built-in trend analysis.

Sleek, modern interface: Minimal waiting. Drag, zoom, box-select, analyze—Aether just responds.

Performance-obsessed: Handles huge datasets with buttery smoothness, way beyond what I could get in legacy tools.

Open source & hackable: Built with Python, Bokeh, and modern data science libraries.

If you love Panoply but wish it was faster, smarter, and just… more fun—give Aether a spin!
Check out the animated demo below ⬇️


Get started:
https://github.com/mixstam1821/aether

Feedback and PRs welcome! And big thanks to NASA’s Panoply team for showing the way. 🌌

```
