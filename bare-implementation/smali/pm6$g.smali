.class public final enum Lpm6$g;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm6$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpm6$g;",
        ">;"
    }
.end annotation

.annotation runtime Lno6;
    name = "Tier"
.end annotation

.annotation runtime Lxv1;
    value = Lpm6$g$a;
.end annotation


# static fields
.field public static final enum b:Lpm6$g;

.field public static final enum c:Lpm6$g;

.field public static final enum d:Lpm6$g;

.field private static final synthetic e:[Lpm6$g;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lpm6$g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Standard"

    .line 5
    .line 6
    const-string v3, "STANDARD"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lpm6$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lpm6$g;->b:Lpm6$g;

    .line 12
    .line 13
    new-instance v1, Lpm6$g;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "Bulk"

    .line 17
    .line 18
    const-string v4, "BULK"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lpm6$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lpm6$g;->c:Lpm6$g;

    .line 24
    .line 25
    new-instance v2, Lpm6$g;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "Expedited"

    .line 29
    .line 30
    const-string v5, "EXPEDITED"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lpm6$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lpm6$g;->d:Lpm6$g;

    .line 36
    .line 37
    filled-new-array {v0, v1, v2}, [Lpm6$g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lpm6$g;->e:[Lpm6$g;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lpm6$g;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lpm6$g;
    .locals 5
    .annotation runtime Lfj4;
    .end annotation

    .line 1
    invoke-static {}, Lpm6$g;->values()[Lpm6$g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lpm6$g;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "Unknown tier \'"

    .line 24
    .line 25
    const-string v1, "\'"

    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lpm6$g;
    .locals 1

    .line 1
    const-class v0, Lpm6$g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpm6$g;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lpm6$g;
    .locals 1

    .line 1
    sget-object v0, Lpm6$g;->e:[Lpm6$g;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lpm6$g;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpm6$g;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpm6$g;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
