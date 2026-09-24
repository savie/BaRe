.class public abstract Lhs5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;

.field public static final b:Lgv7;

.field public static final c:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcl;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcl;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lhs5;->a:Lgv7;

    .line 14
    .line 15
    new-instance v0, Ldl;

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lgv7;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lhs5;->b:Lgv7;

    .line 28
    .line 29
    new-instance v0, Lel;

    .line 30
    .line 31
    const/16 v1, 0x11

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lgv7;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lzk;

    .line 42
    .line 43
    const/16 v1, 0xe

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lgv7;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 51
    .line 52
    .line 53
    sput-object v1, Lhs5;->c:Lgv7;

    .line 54
    .line 55
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v4, "getprop "

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    filled-new-array {v3}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget v4, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 22
    .line 23
    invoke-static {}, Lk55;->j()Lzd7;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4, v3}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lez v3, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v1
.end method
