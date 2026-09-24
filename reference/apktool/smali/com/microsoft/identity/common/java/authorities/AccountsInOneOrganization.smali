.class public Lcom/microsoft/identity/common/java/authorities/AccountsInOneOrganization;
.super Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->setCloudUrl(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
