# Cool T-Shirts Inc. - Page Visits Funnel Analysis

This project analyzes user behavior on **CoolTShirts.com** to build a **funnel**—a breakdown of how many users continue through each step of the purchase process.

## Funnel Steps
1. User visits **CoolTShirts.com**
2. User adds a t-shirt to their **cart**
3. User clicks **“checkout”**
4. User completes the **purchase**

## Objectives
- Inspect and understand the data from visits, cart additions, checkouts, and purchases.
- Combine datasets to analyze drop-off rates at each step.
- Identify which step of the funnel loses the most users.
- Calculate the **average time from visit to purchase**.

## Data Files (not made available)
- `visits.csv`: Users who visited the website.
- `cart.csv`: Users who added a t-shirt to their cart.
- `checkout.csv`: Users who initiated checkout.
- `purchase.csv`: Users who completed a purchase.

## Tasks Overview
1. Load and inspect data frames (`head()`).
2. Combine data using **left joins** to track user flow.
3. Calculate:
   - % of users who visited but didn’t add to cart.
   - % of users who added to cart but didn’t checkout.
   - % of users who checked out but didn’t purchase.
4. Identify the **weakest funnel step** (highest drop-off).
5. Suggest improvements to increase conversions.
6. Compute **average time to purchase** from initial visit.

## Key Results
- **82.6%** of visitors did not add a t-shirt to their cart.
- **35.1%** of cart additions did not proceed to checkout.
- **36.3%** of checkouts did not result in a purchase.
- The **biggest drop-off** occurs at the "visit → cart" step.
- Average **time to purchase**: **42.56 minutes**.

## Suggested Improvements
- Enhance product visibility on the homepage.
- Add incentives like discounts or limited-time offers.
- Simplify navigation and optimize for mobile.
- Use retargeting popups and social proof to encourage engagement.
