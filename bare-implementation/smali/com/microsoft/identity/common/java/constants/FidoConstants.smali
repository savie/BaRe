.class public abstract Lcom/microsoft/identity/common/java/constants/FidoConstants;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final supportedPasskeyProtocolVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "1.0"

    .line 2
    .line 3
    const-string v1, "1.1"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/microsoft/identity/common/java/constants/FidoConstants;->supportedPasskeyProtocolVersions:Ljava/util/Set;

    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic access$getSupportedPasskeyProtocolVersions$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/constants/FidoConstants;->supportedPasskeyProtocolVersions:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method
