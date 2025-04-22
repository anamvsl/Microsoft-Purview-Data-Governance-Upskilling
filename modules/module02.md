[< Previous Module](../modules/module01.md) - **[Home](../README.md)** - [Next Module >](../modules/module03.md)


# Module 2: Designing the Data Map

**⏰ Duration:** 30 minutes

---

## 📝 Introduction

In this module, you will design the Microsoft Purview Data Map — the foundation of your governance architecture. You will explore how to use **platform domains** and build a hierarchy of **collections** to organize your data sources. These structures define access boundaries and align your governance model with your organization's operational structure.

---

## ✅ Learning Objectives

By the end of this module, you will be able to:

- Explain the difference between platform domains and collections in Microsoft Purview.
- Identify when to create additional platform domains.
- Create and manage a collection hierarchy that reflects your governance structure.
---

## :bookmark_tabs: Table of Contents

| #  | Section | Role |
|----|---------|------|
| 1  | [Understand platform domains](#understanding-platform-domains) | Domain Admin |
| 2  | [Understand collections inside domains](#understanding-collections-inside-domains) | Collection Admin |
| 3  | [Explore platform domains](#️-exploring-platform-domains) | Domain Admin |
| 4  | [Create a collection](#-creating-collections) | Collection Admin |

---

## 📚 Concepts: Domains and Collections in Microsoft Purview

### Understanding Platform Domains  
_Source: [Microsoft Learn - Domains](https://learn.microsoft.com/purview/concept-domains)_

Microsoft Purview introduces **platform domains** to help distribute governance responsibilities across teams, departments, or environments.

> ⚠️ Do not confuse platform **domains** with **governance domains**, which are used to organize business glossary terms and data products.

Key facts:

- Every upgraded Microsoft Purview account starts with a **default domain** automatically.
- You can create up to **four additional domains** (five total) to support isolation between business units, subsidiaries, or environments.
- Domains define governance boundaries and contain collections, glossaries, and associated permissions.
- Each domain can have a dedicated **Domain Admin** role responsible for managing resources within it.

---

### Understanding Collections Inside Domains  
_Source: [Manage Domains and Collections](https://learn.microsoft.com/en-us/purview/how-to-create-and-manage-domains-collections)_

Collections are used to organize data assets, data sources, and scans within a domain. They define access control boundaries and follow a tree structure.

Key characteristics:

- **Hierarchical structure**: Up to 8 levels deep, with a maximum of 256 collections per domain.
- **Role-based access control**: Assign roles such as Collection Admin, Data Curator, and Data Reader.
- **Access inheritance**: Permissions are inherited from parent collections by default but can be restricted.
- **Resource ownership**: Assets and scans are associated with the collection in which they are registered.

---

## ⚙️ Exploring Platform Domains

By default, a **platform domain** is automatically created when your Microsoft Purview account is upgraded. This default domain is sufficient for most environments.

If your organization requires isolation across teams, subsidiaries, or deployment environments (e.g., dev/test/prod), you may create up to four additional domains.

---

1. Open the **Microsoft Purview** portal and select **Data Map** from the left-hand menu or selecting it from the main overview panel on the homepage
   _Insert screenshot: Purview portal showing "Data Map" navigation_

2. Select the **Domains** tab to view the default domain. You should already be here as soon as you click on the Data Map button.   
   _Insert screenshot: Domains tab with default domain listed_

3. If needed, click **+ New domain** to create a custom domain.  
   _Insert screenshot: "Create new domain" button_

4. Enter a **name** and **description** for the domain.  
   _Insert screenshot: Domain name and description fields_

5. Assign one or more **Domain Admins** to manage this domain.  
   _Insert screenshot: Role assignment section_

6. Click **Save** to create the domain.  
   _Insert screenshot: Domains list showing the newly created domain_

> You only need to create custom domains if your organization requires separate governance scopes. Most environments can begin with the default domain alone.

---

## 📂 Creating Collections

Now that you've reviewed your platform domain (or created a custom one, if needed), the next step is to begin structuring your governance environment by creating your first **collection** within that domain.

As mentioned earlier, collections allow you to group and manage data sources, scans, and assets in a structured and secure manner. Each domain starts with a root collection, and you can create sub-collections to reflect your business units, systems, or environments.

In this exercise, you'll create a new collection inside the **default domain**.

> For example, you might create collections named `HR`, `Finance`, or `CustomerInsights` to match internal ownership boundaries.

---

1. Go back to the **Domains** tab under the **Data Map**, if you are not already there.  
   _Insert screenshot: Collections tab showing root collection of the domain_

2. Click **+ New collection**.  
   _Insert screenshot: New Collection panel opening from the right_

3. In the panel that appears, enter a **Display name** for the new collection.  
   Optionally, add a **Description** and assign a **Collection Admin** (this is not required at creation).  
   _Insert screenshot: New collection form (e.g. your provided screenshot)_

4. Click **Create** to finish.  
   Your new collection will appear under the root collection of the domain.  
   _Insert screenshot: Collections list updated with the new sub-collection_

5. Once the collection is created, select it and navigate to the **Role assignments** tab.  
   From here, assign additional roles such as **Data Curator**, **Data Source Admin**, or **Data Reader** as appropriate.  
   _Insert screenshot: Role assignment interface for a selected collection_

> Collection roles can be added or updated at any time. Permissions are inherited by default from the parent collection but can be customized if needed.

---

## ✅ Summary

You have now designed the foundational structure of your Microsoft Purview Data Map using platform domains and collections. These components allow you to reflect your organization’s structure and governance model within the data catalog.

In the next module, you will register data sources and perform scans to populate your catalog with metadata.

👉 [Continue to Module 3: Managing Data Sources](../modules/module03.md)
