.class public final enum Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 2
    .line 3
    const-string v1, "GOOGLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 10
    .line 11
    const-string v2, "APPLE"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v1}, [Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;->$VALUES:[Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 22
    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;->$VALUES:[Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/internal/msafederation/MsaFederatedSignInProviderName;

    .line 8
    .line 9
    return-object v0
.end method
