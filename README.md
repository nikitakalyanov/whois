# check_whois.sh

A simple yet powerful bash-script for checking whois for a domain. Uses https://www.whois.com/whois/ and saves its response as an HTML-file in `results_dir`.

## Usage

For one domain:

```bash
./whois.sh results_dir domain github.com
```
For a list of domains (in a .txt file):

```bash
./whois.sh results_dir file domains.txt
```

## Notes

Substitutes all '\\' and '.' in URLs with '_' to avoid shell interpretation errors. 
