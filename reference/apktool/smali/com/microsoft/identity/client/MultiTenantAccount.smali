.class public final Lcom/microsoft/identity/client/MultiTenantAccount;
.super Lcom/microsoft/identity/client/Account;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mTenantProfiles:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/client/Account;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/client/MultiTenantAccount;->mTenantProfiles:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getTenantProfiles()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/TenantProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/MultiTenantAccount;->mTenantProfiles:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setTenantProfiles(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/MultiTenantAccount;->mTenantProfiles:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method
