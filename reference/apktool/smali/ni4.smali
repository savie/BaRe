.class public final Lni4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lni4;


# instance fields
.field public final a:Ldj4;

.field public final b:Lma2;

.field public final c:Lkm8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lni4;

    .line 2
    .line 3
    invoke-direct {v0}, Lni4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lni4;->d:Lni4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ldj4;

    .line 2
    .line 3
    invoke-direct {v0}, Ldj4;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lw13;->d:Lma2;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lni4;->a:Ldj4;

    .line 12
    .line 13
    iput-object v1, p0, Lni4;->b:Lma2;

    .line 14
    .line 15
    new-instance v0, Lkm8;

    .line 16
    .line 17
    invoke-direct {v0}, Lkm8;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lni4;->c:Lkm8;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ldo4;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lni4;->a:Ldj4;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lvr1;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lvr1;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lnp7;

    .line 15
    .line 16
    sget-object v2, Low8;->c:Low8;

    .line 17
    .line 18
    invoke-interface {p1}, Ldo4;->d()Lp77;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, p0, v2, v0, v3}, Lnp7;-><init>(Lni4;Low8;Lvr1;Lp77;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lnp7;->j(Ldo4;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p1, v0, Lvr1;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    iget v1, v0, Lvr1;->b:I

    .line 34
    .line 35
    :goto_0
    const/4 v2, -0x1

    .line 36
    const/16 v3, 0xa

    .line 37
    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v1, v2, :cond_2

    .line 45
    .line 46
    add-int/lit8 v2, v1, 0x1

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    if-eq v1, v4, :cond_1

    .line 55
    .line 56
    if-eq v1, v3, :cond_1

    .line 57
    .line 58
    const/16 v4, 0xd

    .line 59
    .line 60
    if-eq v1, v4, :cond_1

    .line 61
    .line 62
    const/16 v4, 0x9

    .line 63
    .line 64
    if-ne v1, v4, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iput v2, v0, Lvr1;->b:I

    .line 68
    .line 69
    invoke-static {v1}, Lz85;->b(C)B

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_1
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v0, Lvr1;->b:I

    .line 81
    .line 82
    move p1, v3

    .line 83
    :goto_2
    if-ne p1, v3, :cond_3

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string p1, "Expected EOF after parsing, but had "

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget p1, v0, Lvr1;->b:I

    .line 94
    .line 95
    add-int/lit8 p1, p1, -0x1

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " instead"

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const/4 p1, 0x0

    .line 114
    const/4 p2, 0x6

    .line 115
    invoke-static {v0, p0, p1, p2}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x0

    .line 119
    throw p0
.end method

.method public final b(Ldo4;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Llm4;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lv41;->c:Lv41;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v1, Lv41;->a:Lw40;

    .line 13
    .line 14
    invoke-virtual {v2}, Lw40;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move-object v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Lw40;->removeLast()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    check-cast v2, [C

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v3, v1, Lv41;->b:I

    .line 32
    .line 33
    array-length v4, v2

    .line 34
    sub-int/2addr v3, v4

    .line 35
    iput v3, v1, Lv41;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    move-object v4, v2

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    monitor-exit v1

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x80

    .line 45
    .line 46
    new-array v4, v1, [C

    .line 47
    .line 48
    :cond_2
    iput-object v4, v0, Llm4;->a:[C

    .line 49
    .line 50
    :try_start_1
    new-instance v1, Lop7;

    .line 51
    .line 52
    sget-object v2, Low8;->c:Low8;

    .line 53
    .line 54
    sget-object v3, Low8;->n:Lkx2;

    .line 55
    .line 56
    invoke-virtual {v3}, Lkx2;->d()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    new-array v3, v3, [Lop7;

    .line 61
    .line 62
    iget-object v4, p0, Lni4;->a:Ldj4;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v4, Lwo1;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Lwo1;-><init>(Llm4;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v4, p0, v2, v3}, Lop7;-><init>(Lwo1;Lni4;Low8;[Lop7;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1, p2}, Lop7;->i(Ldo4;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Llm4;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    invoke-virtual {v0}, Llm4;->b()V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    invoke-virtual {v0}, Llm4;->b()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :goto_2
    monitor-exit v1

    .line 92
    throw p0
.end method
