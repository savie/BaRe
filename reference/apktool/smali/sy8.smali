.class public enum Lsy8;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Loe8;


# static fields
.field public static final enum b:Lqy8;

.field public static final synthetic c:[Lsy8;


# instance fields
.field public final a:Lj15;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lqy8;

    .line 2
    .line 3
    const-string v1, "BEST_EFFORT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lj15;->e:Lj15;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lsy8;-><init>(Ljava/lang/String;ILj15;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lsy8;->b:Lqy8;

    .line 12
    .line 13
    new-instance v1, Lsy8;

    .line 14
    .line 15
    const-string v4, "STRICT_FOR_KNOW_EXTRA_FIELDS"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v3}, Lsy8;-><init>(Ljava/lang/String;ILj15;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lry8;

    .line 22
    .line 23
    const-string v4, "ONLY_PARSEABLE_LENIENT"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    sget-object v7, Lj15;->d:Lj15;

    .line 27
    .line 28
    invoke-direct {v3, v4, v6, v7}, Lsy8;-><init>(Ljava/lang/String;ILj15;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lsy8;

    .line 32
    .line 33
    const-string v8, "ONLY_PARSEABLE_STRICT"

    .line 34
    .line 35
    const/4 v9, 0x3

    .line 36
    invoke-direct {v4, v8, v9, v7}, Lsy8;-><init>(Ljava/lang/String;ILj15;)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lsy8;

    .line 40
    .line 41
    sget-object v8, Lj15;->c:Lj15;

    .line 42
    .line 43
    const-string v10, "DRACONIC"

    .line 44
    .line 45
    const/4 v11, 0x4

    .line 46
    invoke-direct {v7, v10, v11, v8}, Lsy8;-><init>(Ljava/lang/String;ILj15;)V

    .line 47
    .line 48
    .line 49
    const/4 v8, 0x5

    .line 50
    new-array v8, v8, [Lsy8;

    .line 51
    .line 52
    aput-object v0, v8, v2

    .line 53
    .line 54
    aput-object v1, v8, v5

    .line 55
    .line 56
    aput-object v3, v8, v6

    .line 57
    .line 58
    aput-object v4, v8, v9

    .line 59
    .line 60
    aput-object v7, v8, v11

    .line 61
    .line 62
    sput-object v8, Lsy8;->c:[Lsy8;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILj15;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lsy8;->a:Lj15;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Lyy8;[BIIZ)Lyy8;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lv13;->a(Lyy8;[BIIZ)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-object p0

    .line 5
    :catch_0
    new-instance v0, Lse8;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lyy8;->a()Lnz8;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iput-object p0, v0, Lse8;->a:Lnz8;

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    add-int/2addr p3, p2

    .line 19
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lpz8;->a([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iput-object p0, v0, Lse8;->b:[B

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    add-int/2addr p3, p2

    .line 31
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lpz8;->a([B)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iput-object p0, v0, Lse8;->c:[B

    .line 40
    .line 41
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsy8;
    .locals 1

    .line 1
    const-class v0, Lsy8;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsy8;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lsy8;
    .locals 1

    .line 1
    sget-object v0, Lsy8;->c:[Lsy8;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lsy8;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lsy8;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a([BIIZI)Lyy8;
    .locals 0

    .line 1
    iget-object p0, p0, Lsy8;->a:Lj15;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lj15;->a([BIIZI)Lyy8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c(Lnz8;)Lyy8;
    .locals 0

    .line 1
    sget-object p0, Lv13;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/function/Supplier;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lyy8;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lse8;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lse8;->a:Lnz8;

    .line 28
    .line 29
    return-object p0
.end method

.method public d(Lyy8;[BIIZ)Lyy8;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lv13;->a(Lyy8;[BIIZ)V

    .line 2
    .line 3
    .line 4
    return-object p1
.end method
