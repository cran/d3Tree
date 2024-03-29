% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d3tree.R
\name{d3tree}
\alias{d3tree}
\title{d3tree}
\usage{
d3tree(
  data,
  name = "name",
  value = "value",
  direction = "horizontal",
  activeReturn = NULL,
  width = NULL,
  height = NULL,
  elementId = NULL
)
}
\arguments{
\item{data}{named list containing hierarchy
structure of data created by df2tree and the
layout of the tree (collapse,radial,cartesian)}

\item{name}{character containing the names of the nodes}

\item{value}{character containing the name of the tooltip column
that are used in the leafs}

\item{direction}{charater containing the direction the
collapsible tree layout will grow to horizontal
or vertical (can be 'h','v')}

\item{activeReturn}{character vector of node attributes
to observe and return to shiny.}

\item{width, height}{Must be a valid CSS unit (like \code{'100\%'},
\code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
string and have \code{'px'} appended.}

\item{elementId}{The input slot that will be used to access the element.}
}
\description{
Htmlwidget that binds to d3js trees.
  When used in Shiny environment the widget returns
a data.frame of logical expressions that represent
  the current state of the tree.
}
\details{
activeReturn is set to NULL by default, but can
  return any attributes that are strings or numeric such
  as: name,value,depth,id.

Any node attributes requested that are not found in the
  node keys are ignored.
}
\examples{

\donttest{
if(interactive()){

d3tree(list(root = df2tree(
              rootname='Titanic',
              struct=as.data.frame(Titanic)
              ),
            layout = 'collapse')
      )

d3tree(list(
  root = df2tree(
           rootname = 'Titanic',
           struct = as.data.frame(Titanic),
           tool_tip = letters[1:(ncol(as.data.frame(Titanic))+1)]
          ),
  layout = 'collapse')
 )

d3tree(list(
   root = df2tree(
            rootname = 'book',
            struct = stan.models),
   layout = 'collapse')
 )

}
}

}
