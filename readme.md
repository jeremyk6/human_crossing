# Fork of [tactile maps for street intersections](https://github.com/myhjiang/human_crossing) to create a Docker container

For examples and scripts usage, see the original README.

## How to use the Docker

Map a folder with an OSM file and configuration files to the /map folder and run the container. You can see examples of such folders in the original repo (example_0).

```bash
docker run --rm -v $(pwd)/example_0:/map jeremyk6/human_crossing:latest
```