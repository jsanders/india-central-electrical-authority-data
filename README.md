# India Central Electrical Authority Data Gathering

Little project to get data off of India's Central Electrical Authority site into a format that can be used more conveniently.

## Environment

Dependencies are sed, wget, and pdftotext from the xpdf project. You should already have sed, but you'll have to get wget and xpdf from homebrew. First, open the Terminal program and install homebrew:

```sh
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

Now, install wget and xpdf from homebrew:

```sh
brew install wget xpdf
```

## Usage

Download pdf data:

```sh
./get_data.sh
```

Convert to csv:

```sh
./convert_data.sh
```

That's it!
