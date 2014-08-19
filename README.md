Inclusive EPUB 3 Exemplar
=========================

Installation Steps
------------------
1. Get EPUB exemplar content.
2. Install some EPUB readers to test with.
3. Install dev version of Pandoc

1 EPUB Exemplar Content
------------------------------------------------

1. Use git to get a copy of the EPUB repository: https://github.com/jhung/EPUB (TODO: Replace repository URL)
2. Change directory into EPUB directory.
3. Create a directory ./videos/
4. Save the videos from [this shared Google drive folder](https://drive.google.com/folderview?id=0BxzmBMhbP3nGTXJENVZOcl9pS0E&usp=sharing) into the ./videos/ directory.

2 Testing Tools
---------------

The following EPUB readers are used for testing:

- [iBooks](http://www.apple.com/ca/ibooks/) - iOS or OSX 10.8 or later
- [Readium](http://readium.org/) - Chrome web browser extension
- [Lucifox](http://lucidor.org/lucifox/)
- [Calibre](http://calibre-ebook.com/)

3 Installing Pandoc
-------------------

The latest dev version of Pandoc has a number of fixes with MathML markup and Video elements.

1. Get the Pandoc source code from github: https://github.com/jgm/pandoc
2. Follow the guide ["Installing the development version of pandoc"](https://github.com/jgm/pandoc/wiki/Installing-the-development-version-of-pandoc)
3. During the installation procedure you may be required to update cabal.
        > cabal update
        > cabal install cabal-install
3. Add Pandoc to your $PATH. Example:
        > export PATH=$PATH:~/Library/Haskell/bin/pandoc
4. Verify Pandoc is working by running pandoc to generate a test EPUB.
        > cd EPUB-Exemplar/tests/
        > pandoc video-test.html -o video-test.epub -w epub3 -f html -R
5. Open video-test.epub in an EPUB reader to verify the content converted properly

Using Pandoc to Convert HTML 5 to EPUB
--------------------------------------

In most cases, the following command is sufficient:

        > pandoc 01-velocity.html -o 01-velocity.epub -w epub3 -f html -R

However, in some cases of large HTML files, the following command is required:

        > pandoc +RTS -K100m -RTS test.html -o test.epub -w epub3 -f html -R

To combine multiple input HTML files into a single EPUB document:

      > pandoc 01.html 02.html 03.html -o 01-velocity.epub -w epub3 -f html -R


Helpful Resources
-----------------

- Todo: A link to Inclusive EPUB 3 ILDH Guide
- [EPUB Samples Project](https://code.google.com/p/epub-samples/)
- [IDPF EPUB Validator](http://validator.idpf.org/)

Videos Original Source
----------------------
- http://www.ck12.org/physics/Types-of-Forces/lesson/Types-of-Forces/
- http://www.ck12.org/physics/Velocity/lesson/Velocity/

Videos ©CK-12 Foundation is licensed under Creative Commons Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)
