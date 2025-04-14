# Lab Setup - Module 00

**[Home](../README.md)** - [Next Module >](../modules/module01.md)

## :loudspeaker: Introduction

 To complete the Microsoft Purview lab exercises, you'll first need to set up the required Azure resources.

## :thinking: Prerequisites

* An [Azure account](https://azure.microsoft.com/free/) with an active subscription.
* Owner permissions within a Resource Group on Azure to create resources and manage role assignments.
* The Azure subscription must have the following resource providers registered.
  * Microsoft.Authorization
  * Microsoft.Fabric
  * Microsoft.Capacity
  * Microsoft.DataFactory
  * Microsoft.KeyVault
  * Microsoft.Purview
  * Microsoft.Storage
  * Microsoft.Sql

## :dart: Objectives

* Deploy the necessary Microsoft Fabric and Azure components to support the Microsoft Purview Data Governance Labs

## :bookmark_tabs: Table of Contents

| #  | Component             | Description                                      |
|----|-----------------------|--------------------------------------------------|
| 1  | [1-click deployment](#1-click-deployment) | Provision core resources for the lab environment |

[↥ back to top](#module-00---lab-setup-)

## 1-click deployment

Use this script to deploy your Azure resources, including a lightweight Microsoft Fabric capacity (F2 SKU). This Fabric capacity will be used for creating Lakehouses and registered as a data source within Microsoft Purview.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fanamvsl%2FMicrosoft-Purview-Data-Governance-Upskilling%2Fmain%2Finfra%2Fdeployment.bicep)

## :tada: Summary

You have now provisioned the core resources required for the Microsoft Purview Data Governance Lab.  
The deployed Microsoft Fabric capacity will act as a connected data source, enabling you to explore key Purview capabilities such as data cataloguing, lineage, and governance.

[↥ back to top](#module-00---lab-setup-)
