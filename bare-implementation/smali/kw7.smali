.class public final enum Lkw7;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum a:Lkw7;

.field public static final enum b:Lkw7;

.field public static final enum c:Lkw7;

.field public static final synthetic d:[Lkw7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkw7;

    .line 2
    .line 3
    const-string v1, "LEFT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkw7;->a:Lkw7;

    .line 10
    .line 11
    new-instance v1, Lkw7;

    .line 12
    .line 13
    const-string v2, "CENTER"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lkw7;->b:Lkw7;

    .line 20
    .line 21
    new-instance v2, Lkw7;

    .line 22
    .line 23
    const-string v3, "RIGHT"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lkw7;->c:Lkw7;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lkw7;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lkw7;->d:[Lkw7;

    .line 36
    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkw7;
    .locals 1

    .line 1
    const-class v0, Lkw7;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkw7;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkw7;
    .locals 1

    .line 1
    sget-object v0, Lkw7;->d:[Lkw7;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lkw7;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkw7;

    .line 8
    .line 9
    return-object v0
.end method
