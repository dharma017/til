# Optimize and Compress JPEG or PNG Images without losing its actual quality

* `jpegoptim` – is a utility to optimize/compress JPEG files without loosing quality.
* `OptiPNG` – is a small program that optimize PNG images to smaller size without losing any information.

Batch Compress or Optimize JPG Images

    sudo apt-get install jpegoptim
    cd imagedir && jpegoptim *.JPG

Batch Compress or Optimize PNG Images

    sudo apt-get install optipng
    cd imagedir && optipng *.png

Tips:

With image quality factor 70

    jpegoptim -m 70 *.JPG

Here’s a neat trick for everything in an entire directory (recursive)

    find . -type f -name "*.jpg" -exec jpegoptim {} \;
