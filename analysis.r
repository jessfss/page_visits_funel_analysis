---
title: "Page Visits Funnel"
output: html_notebook
---

```{r message = FALSE, error=TRUE}
# load packages

library(readr)
library(dplyr)

```

```{r message = FALSE, error=TRUE}
# load data

visits <- read_csv("visits.csv")
cart <- read_csv("cart.csv")
checkout <- read_csv("checkout.csv")
purchase <- read_csv("purchase.csv")
```

```{r error=TRUE}
# inspect data frames

head(visits)
head(cart)
head(checkout)
head(purchase)

```

```{r error=TRUE}
# define visits_cart here:

visits_cart <- visits %>%
left_join(cart)
visits_cart

```

```{r error=TRUE}
# define total_visits here:

total_visits <- nrow(visits)

```

```{r error=TRUE}
# define visit_no_cart here:

visit_no_cart <- visits_cart %>%
  filter(is.na(cart_time))
visit_no_cart

```

```{r error=TRUE}
# calculate visit_no_cart_percent here:

no_cart_visits <- nrow(visit_no_cart)
visit_no_cart_percent <- (no_cart_visits / total_visits) * 100
visit_no_cart_percent

```

```{r error=TRUE}
# define cart_checkout here:

cart_checkout <- cart %>%
left_join(checkout)
cart_checkout

```

```{r error=TRUE}
# define total_carts here:

total_carts <- nrow(cart_checkout)
total_carts
```

```{r error=TRUE}
# define cart_no_checkout here:
cart_no_checkout <- cart_checkout %>%
filter(is.na(checkout_time))
cart_no_checkout

```

```{r error=TRUE}
# calculate cart_no_checkout_percent here:

no_checkout_visits <- nrow(cart_no_checkout)
cart_no_checkout_percent <- (no_checkout_visits/total_carts) * 100
cart_no_checkout_percent
```

```{r error=TRUE}
# define all_data here:
#all_data <- visits %>%
 # left_join(cart, by = "user_id") %>%
  #left_join(checkout, by = "user_id") %>%
  #left_join(purchase, by = "user_id")
#head(all_data)

all_data <- visits %>%
  left_join(cart) %>%
  left_join(checkout) %>%
  left_join(purchase)
head(all_data)

```

```{r error=TRUE}
# define total_checkout here:

total_checkout <- nrow(checkout)
total_checkout

```

```{r error=TRUE}
# define checkout_no_purchase here:

checkout_no_purchase <- all_data %>%
  filter(is.na(purchase_time) & !is.na(checkout_time))
checkout_no_purchase

```

```{r error=TRUE}
# calculate checkout_no_purchase_percent here:

no_purchase_visits <- nrow(checkout_no_purchase)
checkout_no_purchase_percent <- (no_purchase_visits / total_checkout) * 100
checkout_no_purchase_percent

```

```{r error=TRUE}
# update all_data with time_to_purchase column here:

all_data <- all_data %>%
  mutate(time_to_purchase = purchase_time - visit_time)

```

```{r error=TRUE}
# inspect the updated all_data data frame here:

head(all_data)

```

```{r error=TRUE}
# define time_to_purchase here:

time_to_purchase <- all_data %>%
  summarize(mean_time = mean(time_to_purchase, na.rm = TRUE))
time_to_purchase

```
