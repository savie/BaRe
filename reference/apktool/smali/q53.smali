.class public final enum Lq53;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum c:Lq53;

.field public static final synthetic d:[Lq53;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lq53;

    .line 2
    .line 3
    const v1, 0x7f0800ae

    .line 4
    .line 5
    .line 6
    const v2, 0x7f0700ad

    .line 7
    .line 8
    .line 9
    const-string v3, "NORMAL"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lq53;-><init>(Ljava/lang/String;III)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq53;->c:Lq53;

    .line 16
    .line 17
    new-instance v1, Lq53;

    .line 18
    .line 19
    const v2, 0x7f0800af

    .line 20
    .line 21
    .line 22
    const v3, 0x7f0700ae

    .line 23
    .line 24
    .line 25
    const-string v4, "SMALL"

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-direct {v1, v4, v5, v2, v3}, Lq53;-><init>(Ljava/lang/String;III)V

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1}, [Lq53;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lq53;->d:[Lq53;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lq53;->a:I

    .line 5
    .line 6
    iput p4, p0, Lq53;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq53;
    .locals 1

    .line 1
    const-class v0, Lq53;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq53;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lq53;
    .locals 1

    .line 1
    sget-object v0, Lq53;->d:[Lq53;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lq53;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lq53;

    .line 8
    .line 9
    return-object v0
.end method
