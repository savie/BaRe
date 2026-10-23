.class public final enum Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;


# instance fields
.field private mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 23
    .line 24
    filled-new-array {v0}, [Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 29
    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getSecretKeyData()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    return-object p0
.end method
