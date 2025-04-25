# 📘 Module 7 – Creating and Managing Glossary Terms and OKRs

[< Previous Module](../modules/module06.md) - **[Home](../README.md)** - [Next Module >](../modules/module08.md)

## 📌 Introduction

Glossary terms in Microsoft Purview Unified Catalog help establish a business vocabulary that supports data discovery, collaboration, and governance. These terms create a shared language between technical and non-technical users, enhancing clarity and trust.

In this module, you’ll learn how to create, publish, and manage glossary terms — and link them to relevant data products or assets using the **AdventureWorksLT** dataset as context.

---

## 🧠 Prerequisites

- Microsoft Purview account with Unified Catalog enabled
- Role: **Data Steward** (to create/edit glossary terms)
- Governance domains must be published before glossary terms can be published
- AdventureWorksLT database registered and scanned in Purview

---

## 🎯 Objectives

- View and browse glossary terms across domains
- Create a new glossary term for "Customer"
- Publish the term
- Link the term to data products
- Understand parent-child term hierarchy
- Search glossary terms as a catalog consumer

---

## 📚 Table of Contents

| #  | Section                                                           | Role          |
|----|--------------------------------------------------------------------|---------------|
| 1  | [Create the "Customer" Glossary Term](#1-create-the-customer-glossary-term) | Data Steward  |
| 2  | [Publish the Glossary Term](#2-publish-the-glossary-term)         | Data Steward  |
| 3  | [Link to Data Products](#3-link-to-data-products)                 | Data Steward  |
| 4  | [Create an OKR](#4-create-an-okr)                                 | Data Steward  |
| 5  | [Publish the OKR](#5-publish-the-okr)                             | Data Steward  |
| 6  | [Search and Browse (Enterprise Glossary)](#6-search-and-browse-enterprise-glossary) | All Users     |

---

## 1. Create the "Customer" Glossary Term

> 📝 **Note**: You must have the **Data Steward** role to create glossary terms.

1. Open the **Microsoft Purview** portal.
2. Go to **Catalog management** > **Governance domains**.
3. Select the domain you'd like to add the term to (e.g., `AdventureWorksLT`).
4. Under the **Business concepts** section, find the **Glossary terms** card and select **View all**.
- ![Purview Managing Data Sources](../images/module07/7.1.png)
5. Click **+ New term**.
- ![Purview Managing Data Sources](../images/module07/7.2.png)
6. Fill in the form:
   - **Name**: `Customer`
   - **Definition**:  `An individual or organization that engages with a business by purchasing goods or services. Customers are typically identified by a unique identifier (such as CustomerID) and are associated with contact details, billing addresses, and order history.`  
   - **Owner(s)**: Search for `admin` and add yourself
   - (Optional) Add a **Parent Term** for hierarchy
   - ![Purview Managing Data Sources](../images/module07/7.3.png)
   - Click Nex
   - Add **Acronyms**
   - **Acronym:** `CX`
   - ![Purview Managing Data Sources](../images/module07/7.4.png)
   - Add **Resources** (useful links)
   - **Resources**: `aka.ms/AdvWorksWiki`
    - ![Purview Managing Data Sources](../images/module07/7.5.png)
7. Click **Create**.

> 🔒 Your term is now in **Draft** state — only visible to stewards and domain owners.

  ![Purview Managing Data Sources](../images/module07/7.6.png)

---

## 2. Publish the Glossary Term

Once your term is ready for broader visibility:

1. Open the glossary term (e.g., **Customer**).
2. In the top left corner, click the **Publish** button next to **Edit**.

> ✅ The term's status will change from **Draft** to **Published**, making it visible in the Enterprise Glossary (where consumers can search for business concepts like glossary terms and related assets).

  ![Purview Managing Data Sources](../images/module07/7.7.png)

---

## 3. Link to Data Products

You can associate glossary terms with related data products:

1. Open the published glossary term.
2. Go to the **Related** tab.
3. Click **+ Add data product**.
- ![Purview Managing Data Sources](../images/module07/7.8.png)
4. Search for and select published data products, such as:
   - `Customer Order Summary`
- ![Purview Managing Data Sources](../images/module07/7.9.png)
5. Click **Add** to confirm.
- ![Purview Managing Data Sources](../images/module07/7.10.png)

---

## 4. Create an OKR

OKRs (**Objectives and Key Results**) help your team set measurable goals within a governance domain. In Microsoft Purview, each OKR includes:

- One **Objective**: a high-level governance goal
- One or more **Key Results**: numeric indicators that measure progress toward that goal

> 📝 You must have the **Data Steward** role and the **governance domain must be published** before you can create OKRs.

1. In the **Purview portal**, go to **Catalog management** > **Governance domains**.
2. Select your published governance domain (e.g., `Sales`).
3. Under the **Business concepts** section, open the **OKRs** card.
    ![New OKR Button](../images/module07/7.12.png)
4. Click **+ New OKR**.
    ![New OKR Button](../images/module07/7.13.png)

---

### 🏁 Define the Objective

- **Name**: `Glossary Coverage - Q2`
- **Objective**: `Make a concerted effort in publishing glossary for usage across core customer datasets to improve department wide data clarity`
- **Owner(s)**: Search for `admin` and assign yourself (or a relevant Entra group)
- **Target date**: Put in any date in the future.
- 
    ![New OKR Button](../images/module07/7.14.png)
  
💡 The **Objective** should be strategic and qualitative — it's the "what" you're trying to achieve from a governance perspective.

---

### 📊 Add Key Results

Add the below values and hit Create 
- **Key result**: `Increase glossary term publish rate by 25% for Customer datasets `
- **Progress status**: `On track`
- **Progress amount**: `5`
- **Progress amount**: `25`
- **Progress amount**: `30`

  ![New OKR Button](../images/module07/7.15.png)

💡 Congratulations! You have created your first OKR! You can add multiple Key Results to track different parts of your objective.

   ![New OKR Button](../images/module07/7.16.png)

---

### 🔗 (Optional) Link Terms or Data Products

You can link data products to the OKR to provide more context and traceability:

- Click **+ Link data product** 
- Search and select relevant data products (e.g., `Customer Order Summary`) and click on `Add`

  ![New OKR Button](../images/module07/7.17.png)

💡 Linking shows how the OKR contributes to broader governance goals and helps consumers explore related assets.

---

## 5. Publish the OKR

When everything is ready, click **Publish**.

> 🔓 Publishing makes the OKR visible to others in the **Enterprise Glossary**. You can update the **Current value** by selecting the Key result to update progress over time.

  ![New OKR Button](../images/module07/7.19.png)



## 6. Search and Browse (Enterprise Glossary)

> This section is for **consumer** roles (e.g., analysts, data citizens).

1. In the **Microsoft Purview** portal, open **Unified Catalog**.
2. Under **Discovery**, select **Enterprise glossary**.
3. Use tabs like **Glossary terms**, **Critical data elements**, or **OKRs** to explore published concepts.
4. Search by term name or filter by domain, owner, acronym, etc.
5. Switch between **Compact list**, or **Tree** views to visualise parent/child relationships.

> 🔍 Unpublished parent terms won't appear in the tree view.

- ![Purview Managing Data Sources](../images/module07/7.11.png)

---


## 🎉 Summary

In this module, you created and published a glossary term for **Customer**, linked it to data products, and defined an OKR to track glossary coverage within the Sales governance domain. You also explored how glossary terms and OKRs can be searched and browsed in Microsoft Purview.

Glossary terms help bridge the gap between business and technical users by defining shared meaning. OKRs support accountability by setting measurable governance goals that align with your organisation’s data strategy.

---

[< Previous Module](../modules/module06.md) - **[Home](../README.md)** - [Next Module >](../modules/module08.md)
