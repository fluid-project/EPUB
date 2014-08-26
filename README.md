# Inclusive EPUB 3 Exemplar

## Directory Structure

This project is organized according to books and their resources:

        ./book-title
            - html
            - images
            - videos
            - audio
              ...
        ./book-title-2
            - ...

Each book is a root directory labelled by its title. Within each book directory are sub-directories containing all the resources required to create the EPUB 3 container.

### Notes
* Some resources (i.e. videos and audio) may contain further instructions, refer to these directories for additional instructions.
* Additional books will be siblings at the root level.

## Installation Steps
1. Get EPUB exemplar content.
2. Install some EPUB readers to test with.
3. Build EPUB using zip

### 1 EPUB Exemplar Content

1. Use git to get a copy of the EPUB repository: https://github.com/jhung/EPUB (TODO: Replace repository URL)
2. Change directory into EPUB directory.
3. Save the videos from [this shared Google drive folder](https://drive.google.com/folderview?id=0BxzmBMhbP3nGTXJENVZOcl9pS0E&usp=sharing) into the ./videos/ directory.

### 2 Testing Tools

The following EPUB readers are used for testing:

- [iBooks](http://www.apple.com/ca/ibooks/) - iOS or OSX 10.8 or later
- [Readium](http://readium.org/) - Chrome web browser extension
- [Lucifox](http://lucidor.org/lucifox/)
- [Calibre](http://calibre-ebook.com/)

### 3 Building EPUB

To build the EPUB archive:

    > cd physics-forces_and_motion/html
    > zip -X9Dr physics.epub mimetype
    > zip -X9Dr physics.epub META-INF Content


## Helpful Resources

- Todo: A link to Inclusive EPUB 3 ILDH Guide
- [Pandoc documentation](http://johnmacfarlane.net/pandoc/README.html)
- [EPUB Samples Project](https://code.google.com/p/epub-samples/)
- [IDPF EPUB Validator](http://validator.idpf.org/)
