.class public Lcom/microsoft/identity/common/java/authorities/AllAccounts;
.super Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ALL_ACCOUNTS_TENANT_ID:Ljava/lang/String; = "common"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "common"

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->setCloudUrl(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "common"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "cloudUrl is marked non-null but is null"

    .line 16
    .line 17
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method
