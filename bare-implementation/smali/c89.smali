.class public final Lc89;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lc89;


# instance fields
.field public final a:Ls79;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc89;

    .line 2
    .line 3
    invoke-direct {v0}, Lc89;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc89;->c:Lc89;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc89;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ls79;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ls79;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lc89;->a:Ls79;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Le89;
    .locals 5

    .line 1
    iget-object v0, p0, Lc89;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    iget-object p0, p0, Lc89;->a:Ls79;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Ljm1;->f:Lcz4;

    .line 15
    .line 16
    const-class v2, Lk79;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Ls79;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lrb;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lrb;->zza(Ljava/lang/Class;)Ld89;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget v2, p0, Ld89;->d:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    and-int/2addr v2, v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    move v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Ld89;->a:Lo69;

    .line 42
    .line 43
    new-instance v1, Lz79;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lz79;-><init>(Lo69;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sget-object v2, Lt79;->a:[I

    .line 50
    .line 51
    invoke-virtual {p0}, Ld89;->a()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v3}, Ldj7;->A(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    aget v2, v2, v3

    .line 60
    .line 61
    if-eq v2, v4, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v1, 0x0

    .line 65
    :goto_1
    invoke-static {p0, v1}, Lx79;->o(Ld89;Lcz4;)Lx79;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_2
    sget-object p0, Ll79;->a:[B

    .line 70
    .line 71
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Le89;

    .line 76
    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    return-object v1

    .line 81
    :cond_4
    check-cast v1, Le89;

    .line 82
    .line 83
    return-object v1
.end method
