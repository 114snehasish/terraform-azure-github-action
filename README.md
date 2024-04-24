# Getting Started with Terraform on Azure

This project uses Terraform to provision resources on Azure. It creates a resource group and a virtual network within the resource group.

## Prerequisites

- Latest version of Terraform
- Azure CLI
- An Azure account with necessary permissions

## Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/your-github-username/terraform-azure-github-action.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-azure-github-action
    ```

3. Create a setenv.sh file and add the following variables if you are using unix based system:

    ```bash
    export TF_VAR_client_id="your-client-id"
    export TF_VAR_client_secret="your-client-secret"
    export TF_VAR_tenant_id="your-tenant-id"
    export TF_VAR_subscription_id="your-subscription-id"
    ```
   If you are using windows, create a setenv.bat file and add the following variables:

    ```bash
    set TF_VAR_client_id="your-client-id"
    set TF_VAR_client_secret="your-client-secret"
    set TF_VAR_tenant_id="your-tenant-id"
    set TF_VAR_subscription_id="your-subscription-id"
    ```
4. Run the following command to load the environment variables:

    ```bash
    source setenv.sh
    ```
   If you are on windows, run the following command:

    ```bash
    setenv.bat
    ```
5. Initialize Terraform:

    ```bash
    terraform init
    ```
6. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```
7. Confirm the action by typing `yes` when prompted.
8. Once the resources are created, you can view them in the Azure portal.
9. To destroy the resources, run:

    ```bash
    terraform destroy
    ```
10. Confirm the action by typing `yes` when prompted. 
11. To clean up, remove the setenv.sh or setenv.bat file.
12. You can follow this blog post to run the Terraform using GitHub Actions: [Unleash Efficiency: Automating Azure Infrastructure with Terraform and GitHub Actions](https://blogs.snehasish-chakraborty.com/full-stack-engineering/devops/gha-with-tf)

You can now explore more Terraform configurations and provision more resources on Azure. Happy coding!

If you have any questions, feel free to mail me at [contact@snehasish-chakraborty.com](mailto:contact@snehasish-chakraborty.com).