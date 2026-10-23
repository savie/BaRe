.class public final enum Lck8$b;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lck8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lck8$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lck8$b;",
        ">;"
    }
.end annotation

.annotation runtime Lno6;
    name = "Status"
.end annotation

.annotation runtime Lxv1;
    value = Lck8$b$a;
.end annotation


# static fields
.field public static final enum b:Lck8$b;

.field public static final enum c:Lck8$b;

.field public static final enum d:Lck8$b;

.field private static final synthetic e:[Lck8$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lck8$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const-string v3, "OFF"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lck8$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lck8$b;->b:Lck8$b;

    .line 12
    .line 13
    new-instance v1, Lck8$b;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "Enabled"

    .line 17
    .line 18
    const-string v4, "ENABLED"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lck8$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lck8$b;->c:Lck8$b;

    .line 24
    .line 25
    new-instance v2, Lck8$b;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "Suspended"

    .line 29
    .line 30
    const-string v5, "SUSPENDED"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lck8$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lck8$b;->d:Lck8$b;

    .line 36
    .line 37
    filled-new-array {v0, v1, v2}, [Lck8$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lck8$b;->e:[Lck8$b;

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
    iput-object p3, p0, Lck8$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lck8$b;
    .locals 1

    .line 1
    const-string v0, "Enabled"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lck8$b;->c:Lck8$b;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "Suspended"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lck8$b;->d:Lck8$b;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lck8$b;->b:Lck8$b;

    .line 24
    .line 25
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lck8$b;
    .locals 1

    .line 1
    const-class v0, Lck8$b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lck8$b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lck8$b;
    .locals 1

    .line 1
    sget-object v0, Lck8$b;->e:[Lck8$b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lck8$b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lck8$b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lck8$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
