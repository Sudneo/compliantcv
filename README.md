## CompliantCV

This typst CV template is heavily inspired by https://github.com/jskherman/imprecv/tree/main but has substantial modifications.

- The layout has been modified to make it more colorful
- Some sections have been removed
- Most notably, the configuration has been moved from YAML to TOML, and the configuration is now compliant with the [JSONResume](https://jsonresume.org/schema) schema
- The typst structure has been simplified

In fact, this template at the moment is designed to be the "pdf generator" for a static [zola](https://getzola.org) site.

## Generate PDF

The compilation expects a `TOML` data file compliant with jsonresume, plus some metadata, at `/data/data.toml`, which is absolute _considering the root the typst root (not the filesystem root)_.
See [./data/data.toml](./data/data.toml) for a silly example.

Given that pictures are not meant to be hosted in the template folder, compilation can be achieved specifying the `--root` flag, which sets the 
typst root path.
For example

```sh
cd compliantcv
typst compile --root . template/template.typ cv.pdf
```

## Example Output

You can find examples in the [outputs](./outputs) directory.

<table cellspacing="0" style="border-collapse: collapse !important; border-spacing: 0 !important;">
 <tr>
  <td>
   <img src="https://github.com/sudneo/compliantcv/raw/main/static/example1.png" alt="Example with both QR and portrait">
  </td>
  <td>
   <img src="https://github.com/sudneo/compliantcv/raw/main/static/example2.png" alt="Example with just QR">
  </td>
 </tr>
 <tr>
  <td>
   <img src="https://github.com/sudneo/compliantcv/raw/main/static/example3.png" alt="More basic example">
  </td>
  <td>
   <img src="https://github.com/sudneo/compliantcv/raw/main/static/example4.png" alt="Different color">
  </td>
 </tr>
</table>

## Getting Started

If you want to use this template, the easiest way is to clone this repository, change the data and compile.

```sh
git clone https://github.com/Sudneo/compliantcv.git
cd compliantcv
rm -rf ./git
# modify ./data/data.toml
# modify the pictures and the paths as you want!
typst compile --root . template/template.typ cv.yaml
```
