.class public final enum Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "NONE"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 11
    .line 12
    const/16 v2, 0x12

    .line 13
    .line 14
    const-string v3, "qrpin"

    .line 15
    .line 16
    const-string v4, "QR"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    filled-new-array {v0, v1}, [Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;->$VALUES:[Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;->code:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;->$VALUES:[Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 8
    .line 9
    return-object v0
.end method
