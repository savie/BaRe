.class public final enum Lsl7;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum a:Lsl7;

.field public static final enum b:Lsl7;

.field public static final synthetic c:[Lsl7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lsl7;

    .line 2
    .line 3
    const-string v1, "CR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lsl7;

    .line 10
    .line 11
    const-string v2, "CRLF"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lsl7;->a:Lsl7;

    .line 18
    .line 19
    new-instance v2, Lsl7;

    .line 20
    .line 21
    const-string v3, "LF"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lsl7;->b:Lsl7;

    .line 28
    .line 29
    filled-new-array {v0, v1, v2}, [Lsl7;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lsl7;->c:[Lsl7;

    .line 34
    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsl7;
    .locals 1

    .line 1
    const-class v0, Lsl7;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsl7;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lsl7;
    .locals 1

    .line 1
    sget-object v0, Lsl7;->c:[Lsl7;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lsl7;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lsl7;

    .line 8
    .line 9
    return-object v0
.end method
