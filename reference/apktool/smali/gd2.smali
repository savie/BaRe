.class public final enum Lgd2;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum b:Lgd2;

.field public static final enum c:Lgd2;

.field public static final enum d:Lgd2;

.field public static final enum e:Lgd2;

.field public static final synthetic f:[Lgd2;


# instance fields
.field public final a:Ltr9;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lgd2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "yyyy-MM-dd HH:mm:ss.S z"

    .line 5
    .line 6
    const-string v3, "FULL"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lgd2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lgd2;->b:Lgd2;

    .line 12
    .line 13
    new-instance v1, Lgd2;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "yyyy-MM-dd HH:mm:ss z"

    .line 17
    .line 18
    const-string v4, "LONG"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lgd2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lgd2;->c:Lgd2;

    .line 24
    .line 25
    new-instance v2, Lgd2;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "yyyy-MM-dd z"

    .line 29
    .line 30
    const-string v5, "NORMAL"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4}, Lgd2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lgd2;->d:Lgd2;

    .line 36
    .line 37
    new-instance v3, Lgd2;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "yyyy-MM-dd"

    .line 41
    .line 42
    const-string v6, "SHORT"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lgd2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lgd2;->e:Lgd2;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3}, [Lgd2;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lgd2;->f:[Lgd2;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ltr9;

    .line 5
    .line 6
    const/4 p2, 0x6

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p1, p2, v0}, Ltr9;-><init>(IZ)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p1, Ltr9;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lgd2;->a:Ltr9;

    .line 19
    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgd2;
    .locals 1

    .line 1
    const-class v0, Lgd2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgd2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lgd2;
    .locals 1

    .line 1
    sget-object v0, Lgd2;->f:[Lgd2;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lgd2;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lgd2;

    .line 8
    .line 9
    return-object v0
.end method
