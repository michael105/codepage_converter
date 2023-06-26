##### cpconv

Codepage conversion tool.


Filter stdin to stdout, without any options
the charset will be guessed and translated to cp1252.


Currently, the guessing of the charmap might work only with German,
the "algorithm" looks for German Umlauts.( &auml;&ouml; .. )

Only extended ascii is implemented (ASCII 0 - 255 ), and UTF8.


Conversion from and to the following charmaps is possible:

<pre>
cpe4002a
cp850
cp437
cp1252
cp1250
cp1251
cp1253
cp1255
cp1256
cp1257
cp1258
atarist
macintosh
mac_centraleurope
iso8859_15
utf8
</pre>


cpe4002a is a special codepage, I'm using with st.

The option -c converts the input to the notation, used in c strings. ( "\x84\xef .. " )
No previous conversion of the input, extended ascii and chars < ascii 32 are converted
to \xnn notation, linebreaks (\n \x0a) aren't modified.



It's a small hack, but useful, if you do work at the terminal.
Most programs will work with e.g. cp1252, or cp437 (the set with border symbols),
but I did always have a hard time with German Umlauts and utf-8.


BOM characters aren't translated, but I also didn't come along them yet.
(Might be also obvious, they aren't contained in the extended ascii sets).


I wouldn't recommend using this in a security relevant context,
it's not written for security, BOM characters could get a problem.


<pre>
# cpconv -h

convert stdin to stdout
Usage: cpconv [-hslxud] [tocp [fromcp]]

Examples: cat text.txt | cpconv cp437 cp850
         (convert from cp850 to cp437)

          cat text.txt | cpconv
         (convert to cp1252, guessing source charset)

Without any options, try to guess the charset and convert to cp1252
(change the default in the source, if needed)

options: -s : silence, no messages to stderr
         -v : verbose
         -l : list codepages
         -U : dump umlaute, converted
         -c : convert input to cstring notation
         -x : display non convertible chars in hexadecimal
         -u : display non convertible chars as utf8
         -d : print debug information
         -h : show this help

(I'm using this as input filter for vi, and to copy text between terminal and x clipboard
 the conversion is done automatically, if needed)
</pre>


miSc, Michael Myer, 2023, GPL

github.com/michael105/codepage_converter

