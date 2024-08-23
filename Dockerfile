FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# Copy the scripts
COPY ./build_map.sh /build_map.sh
COPY ./scripts /scripts
COPY ./styles /styles
COPY ./templates /templates

# Copy the fonts
COPY ./templates/BrailleTBFr2007INSHEAb_thermo.ttf /usr/share/fonts/BrailleTBFr2007INSHEAb_thermo.ttf

# Install dependencies
RUN apt update && apt install -y qgis qgis-plugin-grass python3-geopandas python3-networkx

# Run the script
CMD ["/build_map.sh","map"]