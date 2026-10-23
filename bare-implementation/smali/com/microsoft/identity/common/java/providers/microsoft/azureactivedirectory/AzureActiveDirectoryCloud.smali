.class public Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final BLEU:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

.field public static final DELOS:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

.field public static final GOVSG:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;


# instance fields
.field private mCloudHostAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "aliases"
    .end annotation
.end field

.field private mIsValidated:Z

.field private final mPreferredCacheHostName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "preferred_cache"
    .end annotation
.end field

.field private final mPreferredNetworkHostName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "preferred_network"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 2
    .line 3
    const-string v1, "login.sovcloud-identity.fr"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->BLEU:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 13
    .line 14
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 15
    .line 16
    const-string v1, "login.sovcloud-identity.de"

    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v1, v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->DELOS:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 26
    .line 27
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 28
    .line 29
    const-string v1, "login.sovcloud-identity.sg"

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v0, v1, v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->GOVSG:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredNetworkHostName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredCacheHostName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mCloudHostAliases:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mIsValidated:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredNetworkHostName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredNetworkHostName:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    :goto_0
    return v2

    .line 29
    :cond_3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredCacheHostName:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredCacheHostName:Ljava/lang/String;

    .line 32
    .line 33
    if-nez p0, :cond_4

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_5

    .line 43
    .line 44
    :goto_1
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final getHostAliases()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mCloudHostAliases:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferredCacheHostName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredCacheHostName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferredNetworkHostName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredNetworkHostName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredNetworkHostName:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x2b

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    const/16 v2, 0x3b

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mPreferredCacheHostName:Ljava/lang/String;

    .line 17
    .line 18
    mul-int/2addr v0, v2

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_1
    add-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public final isValidated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mIsValidated:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setIsValidated()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->mIsValidated:Z

    .line 3
    .line 4
    return-void
.end method
