# 🚀 Azure VMSS with Autoscaling (Terraform)

This module deploys a **Virtual Machine Scale Set (VMSS)** in Azure with autoscaling enabled based on **CPU usage**. It creates all supporting resources including:

- Resource Group
- Virtual Network & Subnet
- Linux VM Scale Set
- Autoscaling rules (scale in/out based on CPU)

---

## 📁 Folder Structure

```
vmss-autoscaling/
├── main.tf          # Core infrastructure
├── variables.tf     # Input variables
├── outputs.tf       # Outputs after deployment
└── README.md        # This documentation
```

---

## 🛠️ How to Use This Module

### ✅ Prerequisites
- [Terraform installed](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Azure subscription
- `az login` completed (if using Azure CLI)

---

### 📦 Usage Example

```hcl
module "vmss_demo" {
  source              = "./vmss-autoscaling"

  resource_group_name = "rg-vmss-demo"
  location            = "East US"
  prefix              = "demo"
}
```

---

### ▶️ Commands to Run

```bash
terraform init
terraform plan
terraform apply
```

---

## 📤 Outputs
After `terraform apply`, you'll get:
- Resource Group name
- VMSS name & ID
- Subnet ID

---

## 📌 Notes
- VMSS uses Ubuntu 18.04 with default username `azureuser`
- Password authentication is enabled for demo purposes. Update this for production.
- Scaling triggers:
  - **Scale out**: CPU > 75%
  - **Scale in**: CPU < 30%

---

## 👨‍💻 Author
**Meezan Khan**  
Azure Solutions Architect & Cloud Performance Expert
