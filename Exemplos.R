# Como Fazer Chuncks lado a lado


```{css, echo=FALSE, eval=TRUE}
.multiple .column {
  width: 15%;
  margin: 90px;
}

.multiple .columns {
  display: flex;
}

@media (max-width: 767px) {
  .multiple .column {
    width: auto;
  }
  
  .multiple .columns {
    display: flex;
    flex-direction: column;
  }
}
```

::: multiple
::: {.columns .column-screen-inset}
::: column
## Nodes

```{r echo=FALSE}
## Nodes

kable(nodes, digits = 2,format = "html",caption='Nodes') %>%
  
  scroll_box(height = "300px",width = "600px"
             
             ,box_css = "border: 1px solid #ddd; padding: 5px; "
             ,extra_css = NULL
             ,fixed_thead = TRUE
             
  ) |>
  
  kable_styling(c('hover', 'condensed', 'responsive'), full_width=T)





```
:::
  
  ::: column
## Edges

```{r echo=FALSE}

## Edges

kable(edges, digits = 2, format = "html", row.names = FALSE,caption = "Tabela Edges")  %>%
  
  
  scroll_box(height = "300px",width = "400px",fixed_thead = TRUE
             ,box_css = "border: 1px solid #ddd; padding: 5px; "
             
  ) 



```
:::
  :::
  :::
  