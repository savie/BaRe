.class public final Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;
.super Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final sClientSdkSideLock:Lmj5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lnc8;->a()Lmj5;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmj5;

    .line 5
    .line 6
    invoke-direct {v0}, Lmj5;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;->sClientSdkSideLock:Lmj5;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$getSClientSdkSideLock$cp()Lmj5;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/ClientActiveBrokerCache;->sClientSdkSideLock:Lmj5;

    .line 2
    .line 3
    return-object v0
.end method
