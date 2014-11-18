# Inclusive EPUB 3 Exemplar

## Directory Structure

This project is organized according to books and their resources:

        ./book-title
            mimetype
            /META-INF
            /Content
                /html
                /images
                /videos
                /audio
                ...
        ./book-title-2
            ...

Each book is a root directory labelled by its title. Within each book directory are sub-directories containing all the resources required to create the EPUB 3 container.

### Notes
* Some resources (i.e. videos and audio) may contain further instructions, refer to these directories for additional instructions.
* Additional books will be siblings at the root level.

## Installation Steps
1. Get EPUB exemplar content.
2. Install some EPUB readers to test with.
3. Build EPUB using zip

### 1 EPUB Exemplar Content

1. Use git to get a copy of the EPUB repository: https://github.com/fluid-project/EPUB
2. Change directory into EPUB directory.
3. Save the videos from the following links into the ./videos/ directory.
    - https://idrc.cachefly.net/floeproject.org/videos/Free_Body_Diagrams.mp4
    - https://idrc.cachefly.net/floeproject.org/videos/Free_Body_Diagrams.webm
    - https://idrc.cachefly.net/floeproject.org/videos/Relative_Velocity.mp4
    - https://idrc.cachefly.net/floeproject.org/videos/Relative_Velocity.webm


### 2 Testing Tools

The following EPUB readers are used for testing:

- [iBooks](http://www.apple.com/ca/ibooks/) - iOS or OSX 10.8 or later
- [Readium](http://readium.org/) - Chrome web browser extension
- [Lucifox](http://lucidor.org/lucifox/)
- [Calibre](http://calibre-ebook.com/)

### 3 Building EPUB

To build the EPUB archive:

In the `physics-forces_and_motion` directory, create a ZIP archive containing the contents of the folder:
the `mimetype` file, the `META-INF` folder and the `Content` folder.
NOTE: You must ensure that the `mimetype` file is the first item in the archive.

For example, to use the `zip` command on the command line to create an archive called `physics.epub`:

    > cd physics-forces_and_motion
    > zip -X physics.epub mimetype
    > zip -XDr physics.epub META-INF Content


## Helpful Resources

- [Inclusive EPUB 3 - Inclusive Learning Design Handbook](http://handbook.floeproject.org/index.php?title=Inclusive_EPUB_3)
- [EPUB Samples Project](https://code.google.com/p/epub-samples/)
- [IDPF EPUB Validator](http://validator.idpf.org/)
- [IDPF command-line EPUB validator](https://github.com/IDPF/epubcheck)
