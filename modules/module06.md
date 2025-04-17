# 📦 Module 6 – Create and Manage Data Products

[< Previous Module](../modules/module04.md) - **[Home](../README.md)** - [Next Module >](../modules/module07.md)

## 📌 Introduction

This lab walks you through how to create a **data product** in Microsoft Purview's Unified Data Governance experience. Data products represent a business-friendly packaging of data assets, with descriptions, use cases, and access control to promote reusability, discoverability, and responsible access.

By the end of this lab, you will have created a data product, added assets to it, configured access policies, and published it.

---

## 🧠 Prerequisites

- An [Azure account](https://portal.azure.com) with an active subscription.
- A Microsoft Purview account.
- You are a **Data Product Owner** in at least one governance domain.
- Optional: Some curated data assets available in your catalog.

---

## 🎯 Objectives

- Create a draft data product.
- Enter business metadata and ownership details.
- Associate with a governance domain.
- Add underlying data assets.
- Define access policy rules and approvers.
- Publish the data product.

---

## 📚 Table of Contents

| #  | Section                                 | Role               |
|----|------------------------------------------|--------------------|
| 1  | [Start Creating a Data Product](#1-start-creating-a-data-product)         | Data Product Owner |
| 2  | [Add Basic Details](#2-add-basic-details)                   | Data Product Owner |
| 3  | [Define Business Use Case](#3-define-business-use-case)     | Data Product Owner |
| 4  | [Add Data Assets](#4-add-data-assets)                       | Data Product Owner |
| 5  | [Set Access Policy](#5-set-access-policy)                   | Data Product Owner |
| 6  | [Review and Publish](#6-review-and-publish)                 | Data Product Owner |

---

## 1. Start Creating a Data Product

1. Open the **Microsoft Purview Governance Portal**.
2. Navigate to `Catalog management` > `Data products`.
3. Select **+ New data product**.

📸 *TODO Insert screenshot here showing navigation to "Data products"*

---

## 2. Add Basic Details

On the **Basic details** page:

- **Name**: Enter a descriptive name for your data product.
- **Description**: Explain where the data came from, what it represents, and its purpose from a business standpoint.
- **Type**: Choose the data product type from the dropdown.
- **Owners**: Select one or more individuals or groups to own this data product.

Select **Next**.

📸 *TODO Insert screenshot of filled-out basic details*

---

## 3. Define Business Use Case

On the **Business details** page:

- **Governance domain**: Choose the domain your data product should belong to.
- **Business use case**: Describe how this data can be used, any filters/dimensions available, and what it’s suitable for.
- (Optional) Check **Mark as Endorsed** if this data product is validated internally.

Select **Create**.

📸 *TODO Insert screenshot of governance domain and use case filled in*

---

## 4. Add Data Assets

Data products group one or more curated data assets to improve discoverability and reuse.

To add data assets:

1. In `Catalog management` > `Data products`, select your draft data product.
2. Click **Add data assets** below the description.
3. Use the search bar or filters to find assets.
4. Select the desired assets and click **Add**.

> 💡 Only assets that belong to the same governance domain or that you have permission to see will be searchable.

📸 * TODO Insert screenshot of asset picker and added assets*

---

## 5. Set Access Policy

Access policies define how data consumers can request and gain access to this product.

> ✅ You must **configure access policies while the data product is in draft**.

To configure the policy:

1. Open your draft data product.
2. Click **Manage policies**.

Within the policy editor:

- Under **Permitted access**, define usage purposes (e.g. "Marketing Analytics", "Operational Insights").
- Under **Approval requirements**, choose:
  - Whether manager or privacy review is required.
  - Approvers (can be users, Entra ID groups, etc.)
  - Optional: Set an **Access provider** to manually grant access to data assets.
- Under **Attestations**, configure whether data copies are allowed, terms of use, and other acknowledgements.

> 👀 **Preview the request form**  
> Before saving, you can select **Preview request form** to see what users will experience when they request access to your data product. This helps validate that your configuration is clear and complete.

📸 * TODO Insert screenshot of policy settings and preview window*

Click **Save changes** when done.

---

## 6. Review and Publish

Now that your data product has:

- Metadata (basic + use case),
- Data assets attached,
- A defined access policy,

...you can publish it.

1. Return to the product overview.
2. Click **Publish** in the top right corner.

Your data product is now discoverable in the Unified Catalog and available for access requests.

📸 *TODO Insert screenshot of the published data product*

---

## 🎉 Summary

This module provided an overview of how to create and manage data products in Microsoft Purview. You learned how to define business metadata, associate curated data assets, configure access policies, and publish the product for discovery and use across your organization.

---

[< Previous Module](../modules/module04.md) - **[Home](../README.md)** - [Next Module >](../modules/module07.md)
