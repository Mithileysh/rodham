[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/rodham.svg?branch=master)](https://travis-ci.org/JohnCoene/rodham)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/JohnCoene/rodham?branch=master&svg=true)](https://ci.appveyor.com/project/JohnCoene/rodham)
[![Coverage Status](https://img.shields.io/coveralls/JohnCoene/rodham.svg)](https://coveralls.io/r/JohnCoene/rodham?branch=master)
[![Coverage Status](https://img.shields.io/codecov/c/github/JohnCoene/rodham/master.svg)](https://codecov.io/github/JohnCoene/rodham?branch=master)

# rodham

Fetch and process Hillary Rodham Clinton's *personal* emails.

## Installation

You can install rodham from github with:

```R
# install.packages("devtools")
devtools::install_github("JohnCoene/rodham")
```

## Example

```R
# fetch emails
data(emails)

# build graph
edges <- edges_emails(emails)
nodes <- nodes_emails(emails)
g <- igraph::graph.data.frame(edges, vertices = nodes)

# plot 
plot(g)
```

# Project Vault

See other projects at [http://johncoene.github.io/projects/](http://johncoene.github.io/projects/)
