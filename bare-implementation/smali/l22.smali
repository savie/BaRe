.class public final Ll22;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld36;
.implements Lc55;
.implements Lz23;
.implements Ln59;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ll22;->a:I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 90
    new-array v1, v0, [I

    .line 91
    iput-object v1, p0, Ll22;->b:Ljava/lang/Object;

    .line 92
    new-array v1, v0, [I

    .line 93
    iput-object v1, p0, Ll22;->c:Ljava/lang/Object;

    .line 94
    new-array v0, v0, [I

    .line 95
    iput-object v0, p0, Ll22;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(BI)V
    .locals 0

    .line 80
    iput p2, p0, Ll22;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Ll22;->a:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v0, p1, [J

    iput-object v0, p0, Ll22;->b:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 88
    new-array p1, p1, [J

    iput-object p1, p0, Ll22;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 81
    iput p1, p0, Ll22;->a:I

    iput-object p2, p0, Ll22;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll22;->c:Ljava/lang/Object;

    iput-object p4, p0, Ll22;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg45;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ll22;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Ll22;->b:Ljava/lang/Object;

    iput-object p1, p0, Ll22;->c:Ljava/lang/Object;

    .line 82
    iget-object p1, p1, Lg45;->h:Loe;

    .line 83
    iput-object p1, p0, Ll22;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringWriter;Lvq3;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Ll22;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lwq3;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/io/BufferedWriter;

    .line 13
    .line 14
    const/16 v2, 0x400

    .line 15
    .line 16
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lwq3;->d:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance p1, Llb4;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iget p2, p2, Lvq3;->b:I

    .line 27
    .line 28
    iput p2, p1, Llb4;->a:I

    .line 29
    .line 30
    new-instance p2, Lvc9;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p2, v2, v1}, Lvc9;-><init>(BI)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x10

    .line 38
    .line 39
    new-array v1, v1, [Ljava/lang/String;

    .line 40
    .line 41
    iput-object v1, p2, Lvc9;->c:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object p2, p1, Llb4;->d:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object p1, v0, Lwq3;->c:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance p1, Lln5;

    .line 48
    .line 49
    const/16 p2, 0x9

    .line 50
    .line 51
    invoke-direct {p1, p2}, Lln5;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p2, p1, Lln5;->b:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object p1, v0, Lwq3;->b:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance p1, Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Ll22;->d:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance p2, Liv5;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Liv5;-><init>(Ljava/util/HashSet;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Ll22;->b:Ljava/lang/Object;

    .line 78
    .line 79
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 84
    iput p4, p0, Ll22;->a:I

    iput-object p1, p0, Ll22;->d:Ljava/lang/Object;

    iput-object p2, p0, Ll22;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll22;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ll22;II[BII)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    .line 4
    .line 5
    if-ge v1, p4, :cond_4

    .line 6
    .line 7
    aget-byte v2, p3, v1

    .line 8
    .line 9
    and-int/lit8 v3, v2, 0xf

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    shr-int/2addr v2, v4

    .line 17
    const/4 v5, 0x2

    .line 18
    if-ne p5, v5, :cond_2

    .line 19
    .line 20
    const/16 v4, 0xf

    .line 21
    .line 22
    if-ge v3, v4, :cond_1

    .line 23
    .line 24
    mul-int/lit16 v6, v3, 0xcd

    .line 25
    .line 26
    shr-int/lit8 v6, v6, 0xa

    .line 27
    .line 28
    mul-int/lit8 v6, v6, 0x5

    .line 29
    .line 30
    sub-int/2addr v3, v6

    .line 31
    add-int v6, p1, v0

    .line 32
    .line 33
    rsub-int/lit8 v3, v3, 0x2

    .line 34
    .line 35
    iget-object v7, p0, Ll22;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v7, [I

    .line 38
    .line 39
    aput v3, v7, v6

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    :cond_1
    if-ge v2, v4, :cond_0

    .line 44
    .line 45
    if-ge v0, p2, :cond_0

    .line 46
    .line 47
    mul-int/lit16 v3, v2, 0xcd

    .line 48
    .line 49
    shr-int/lit8 v3, v3, 0xa

    .line 50
    .line 51
    mul-int/lit8 v3, v3, 0x5

    .line 52
    .line 53
    sub-int/2addr v2, v3

    .line 54
    add-int v3, p1, v0

    .line 55
    .line 56
    sub-int/2addr v5, v2

    .line 57
    iget-object v2, p0, Ll22;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, [I

    .line 60
    .line 61
    aput v5, v2, v3

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    if-ne p5, v4, :cond_0

    .line 67
    .line 68
    const/16 v4, 0x9

    .line 69
    .line 70
    if-ge v3, v4, :cond_3

    .line 71
    .line 72
    add-int v5, p1, v0

    .line 73
    .line 74
    rsub-int/lit8 v3, v3, 0x4

    .line 75
    .line 76
    iget-object v6, p0, Ll22;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, [I

    .line 79
    .line 80
    aput v3, v6, v5

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    :cond_3
    if-ge v2, v4, :cond_0

    .line 85
    .line 86
    if-ge v0, p2, :cond_0

    .line 87
    .line 88
    add-int v3, p1, v0

    .line 89
    .line 90
    rsub-int/lit8 v2, v2, 0x4

    .line 91
    .line 92
    iget-object v4, p0, Ll22;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, [I

    .line 95
    .line 96
    aput v2, v4, v3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    return v0
.end method

.method public static j(Ll22;II[BI)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v0, p2, :cond_1

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x3

    .line 6
    .line 7
    if-gt v2, p4, :cond_1

    .line 8
    .line 9
    add-int/lit8 v3, v1, 0x1

    .line 10
    .line 11
    aget-byte v4, p3, v1

    .line 12
    .line 13
    and-int/lit16 v4, v4, 0xff

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    aget-byte v3, p3, v3

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    shl-int/lit8 v3, v3, 0x8

    .line 22
    .line 23
    or-int/2addr v3, v4

    .line 24
    aget-byte v1, p3, v1

    .line 25
    .line 26
    and-int/lit16 v1, v1, 0xff

    .line 27
    .line 28
    shl-int/lit8 v1, v1, 0x10

    .line 29
    .line 30
    or-int/2addr v1, v3

    .line 31
    const v3, 0x7fffff

    .line 32
    .line 33
    .line 34
    and-int/2addr v1, v3

    .line 35
    const v3, 0x7fe001

    .line 36
    .line 37
    .line 38
    if-ge v1, v3, :cond_0

    .line 39
    .line 40
    add-int v3, p1, v0

    .line 41
    .line 42
    iget-object v4, p0, Ll22;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, [I

    .line 45
    .line 46
    aput v1, v4, v3

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    :cond_0
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return v0
.end method


# virtual methods
.method public a(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll22;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqg0;

    .line 4
    .line 5
    iget-object p0, p0, Lqg0;->a:Lhl2;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lhl2;->a(B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()[B
    .locals 5

    .line 1
    iget-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Ll22;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lqg0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v1}, Lqg0;->a()[B

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, [B

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Lqg0;->b([B)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v1, Lqg0;->a:Lhl2;

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    invoke-interface {p0, v3, v2, v4}, Lhl2;->update([BII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lqg0;->a()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v3, v1, Lqg0;->a:Lhl2;

    .line 32
    .line 33
    invoke-interface {v3}, Lhl2;->reset()V

    .line 34
    .line 35
    .line 36
    array-length v3, v0

    .line 37
    iget-object v1, v1, Lqg0;->a:Lhl2;

    .line 38
    .line 39
    invoke-interface {v1, v0, v2, v3}, Lhl2;->update([BII)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    iget-object v3, v1, Lqg0;->a:Lhl2;

    .line 45
    .line 46
    invoke-interface {v3}, Lhl2;->reset()V

    .line 47
    .line 48
    .line 49
    array-length v3, v0

    .line 50
    iget-object v1, v1, Lqg0;->a:Lhl2;

    .line 51
    .line 52
    invoke-interface {v1, v0, v2, v3}, Lhl2;->update([BII)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ld33;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ld33;

    .line 7
    .line 8
    invoke-interface {v0}, Ld33;->a()Lrm7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lrm7;->a:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Le33;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Le33;->j(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lf36;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lf36;->c(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public d()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ll22;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf36;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf36;->d()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Ll22;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lc33;

    .line 14
    .line 15
    invoke-interface {p0}, Lc33;->b()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 p0, 0x2

    .line 20
    const-string v1, "FactoryPools"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Created new "

    .line 31
    .line 32
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    instance-of p0, v0, Ld33;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    move-object p0, v0

    .line 54
    check-cast p0, Ld33;

    .line 55
    .line 56
    invoke-interface {p0}, Ld33;->a()Lrm7;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lrm7;->a:Z

    .line 62
    .line 63
    :cond_1
    return-object v0
.end method

.method public e([BI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    iget-object v2, v0, Ll22;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lg45;

    .line 10
    .line 11
    iget v2, v2, Lg45;->e:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x2

    .line 17
    if-ne v2, v6, :cond_0

    .line 18
    .line 19
    move v7, v3

    .line 20
    :goto_0
    const/16 v8, 0x20

    .line 21
    .line 22
    if-ge v7, v8, :cond_1

    .line 23
    .line 24
    mul-int/lit8 v8, v7, 0x8

    .line 25
    .line 26
    iget-object v9, v0, Ll22;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v9, [I

    .line 29
    .line 30
    aget v10, v9, v8

    .line 31
    .line 32
    sub-int v10, v2, v10

    .line 33
    .line 34
    int-to-byte v10, v10

    .line 35
    aput-byte v10, v1, v3

    .line 36
    .line 37
    add-int/lit8 v11, v8, 0x1

    .line 38
    .line 39
    aget v11, v9, v11

    .line 40
    .line 41
    sub-int v11, v2, v11

    .line 42
    .line 43
    int-to-byte v11, v11

    .line 44
    aput-byte v11, v1, v5

    .line 45
    .line 46
    add-int/lit8 v12, v8, 0x2

    .line 47
    .line 48
    aget v12, v9, v12

    .line 49
    .line 50
    sub-int v12, v2, v12

    .line 51
    .line 52
    int-to-byte v12, v12

    .line 53
    aput-byte v12, v1, v6

    .line 54
    .line 55
    add-int/lit8 v13, v8, 0x3

    .line 56
    .line 57
    aget v13, v9, v13

    .line 58
    .line 59
    sub-int v13, v2, v13

    .line 60
    .line 61
    int-to-byte v13, v13

    .line 62
    const/4 v14, 0x3

    .line 63
    aput-byte v13, v1, v14

    .line 64
    .line 65
    add-int/lit8 v13, v8, 0x4

    .line 66
    .line 67
    aget v13, v9, v13

    .line 68
    .line 69
    sub-int v13, v2, v13

    .line 70
    .line 71
    int-to-byte v13, v13

    .line 72
    aput-byte v13, v1, v4

    .line 73
    .line 74
    add-int/lit8 v13, v8, 0x5

    .line 75
    .line 76
    aget v13, v9, v13

    .line 77
    .line 78
    sub-int v13, v2, v13

    .line 79
    .line 80
    int-to-byte v13, v13

    .line 81
    const/4 v15, 0x5

    .line 82
    aput-byte v13, v1, v15

    .line 83
    .line 84
    add-int/lit8 v13, v8, 0x6

    .line 85
    .line 86
    aget v13, v9, v13

    .line 87
    .line 88
    sub-int v13, v2, v13

    .line 89
    .line 90
    int-to-byte v13, v13

    .line 91
    const/16 v16, 0x6

    .line 92
    .line 93
    aput-byte v13, v1, v16

    .line 94
    .line 95
    const/4 v13, 0x7

    .line 96
    add-int/2addr v8, v13

    .line 97
    aget v8, v9, v8

    .line 98
    .line 99
    sub-int v8, v2, v8

    .line 100
    .line 101
    int-to-byte v8, v8

    .line 102
    aput-byte v8, v1, v13

    .line 103
    .line 104
    mul-int/lit8 v8, v7, 0x3

    .line 105
    .line 106
    add-int v8, v8, p2

    .line 107
    .line 108
    shl-int/lit8 v9, v11, 0x3

    .line 109
    .line 110
    or-int/2addr v9, v10

    .line 111
    shl-int/lit8 v10, v12, 0x6

    .line 112
    .line 113
    or-int/2addr v9, v10

    .line 114
    int-to-byte v9, v9

    .line 115
    aput-byte v9, p1, v8

    .line 116
    .line 117
    add-int/lit8 v9, v8, 0x1

    .line 118
    .line 119
    aget-byte v10, v1, v6

    .line 120
    .line 121
    shr-int/2addr v10, v6

    .line 122
    aget-byte v11, v1, v14

    .line 123
    .line 124
    shl-int/2addr v11, v5

    .line 125
    or-int/2addr v10, v11

    .line 126
    aget-byte v11, v1, v4

    .line 127
    .line 128
    shl-int/2addr v11, v4

    .line 129
    or-int/2addr v10, v11

    .line 130
    aget-byte v11, v1, v15

    .line 131
    .line 132
    shl-int/2addr v11, v13

    .line 133
    or-int/2addr v10, v11

    .line 134
    int-to-byte v10, v10

    .line 135
    aput-byte v10, p1, v9

    .line 136
    .line 137
    add-int/2addr v8, v6

    .line 138
    aget-byte v9, v1, v15

    .line 139
    .line 140
    shr-int/2addr v9, v5

    .line 141
    aget-byte v10, v1, v16

    .line 142
    .line 143
    shl-int/2addr v10, v6

    .line 144
    or-int/2addr v9, v10

    .line 145
    aget-byte v10, v1, v13

    .line 146
    .line 147
    shl-int/2addr v10, v15

    .line 148
    or-int/2addr v9, v10

    .line 149
    int-to-byte v9, v9

    .line 150
    aput-byte v9, p1, v8

    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_0
    if-ne v2, v4, :cond_2

    .line 157
    .line 158
    move v6, v3

    .line 159
    :goto_1
    const/16 v7, 0x80

    .line 160
    .line 161
    if-ge v6, v7, :cond_1

    .line 162
    .line 163
    mul-int/lit8 v7, v6, 0x2

    .line 164
    .line 165
    iget-object v8, v0, Ll22;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v8, [I

    .line 168
    .line 169
    aget v9, v8, v7

    .line 170
    .line 171
    sub-int v9, v2, v9

    .line 172
    .line 173
    int-to-byte v9, v9

    .line 174
    aput-byte v9, v1, v3

    .line 175
    .line 176
    add-int/2addr v7, v5

    .line 177
    aget v7, v8, v7

    .line 178
    .line 179
    sub-int v7, v2, v7

    .line 180
    .line 181
    int-to-byte v7, v7

    .line 182
    aput-byte v7, v1, v5

    .line 183
    .line 184
    add-int v8, p2, v6

    .line 185
    .line 186
    shl-int/2addr v7, v4

    .line 187
    or-int/2addr v7, v9

    .line 188
    int-to-byte v7, v7

    .line 189
    aput-byte v7, p1, v8

    .line 190
    .line 191
    add-int/lit8 v6, v6, 0x1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_1
    return-void

    .line 195
    :cond_2
    const-string v0, "Eta needs to be 2 or 4!"

    .line 196
    .line 197
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public f([BI)V
    .locals 13

    .line 1
    iget-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg45;

    .line 4
    .line 5
    iget v0, v0, Lg45;->e:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    :goto_0
    const/16 v3, 0x20

    .line 12
    .line 13
    if-ge v1, v3, :cond_1

    .line 14
    .line 15
    mul-int/lit8 v3, v1, 0x3

    .line 16
    .line 17
    add-int/2addr v3, p2

    .line 18
    mul-int/lit8 v4, v1, 0x8

    .line 19
    .line 20
    aget-byte v5, p1, v3

    .line 21
    .line 22
    and-int/lit8 v6, v5, 0x7

    .line 23
    .line 24
    iget-object v7, p0, Ll22;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v7, [I

    .line 27
    .line 28
    aput v6, v7, v4

    .line 29
    .line 30
    add-int/lit8 v6, v4, 0x1

    .line 31
    .line 32
    and-int/lit16 v5, v5, 0xff

    .line 33
    .line 34
    shr-int/lit8 v8, v5, 0x3

    .line 35
    .line 36
    and-int/lit8 v8, v8, 0x7

    .line 37
    .line 38
    aput v8, v7, v6

    .line 39
    .line 40
    add-int/lit8 v8, v4, 0x2

    .line 41
    .line 42
    shr-int/lit8 v5, v5, 0x6

    .line 43
    .line 44
    add-int/lit8 v9, v3, 0x1

    .line 45
    .line 46
    aget-byte v9, p1, v9

    .line 47
    .line 48
    and-int/lit16 v9, v9, 0xff

    .line 49
    .line 50
    shl-int/lit8 v10, v9, 0x2

    .line 51
    .line 52
    and-int/lit8 v10, v10, 0x7

    .line 53
    .line 54
    or-int/2addr v5, v10

    .line 55
    aput v5, v7, v8

    .line 56
    .line 57
    add-int/lit8 v5, v4, 0x3

    .line 58
    .line 59
    shr-int/lit8 v10, v9, 0x1

    .line 60
    .line 61
    and-int/lit8 v10, v10, 0x7

    .line 62
    .line 63
    aput v10, v7, v5

    .line 64
    .line 65
    add-int/lit8 v10, v4, 0x4

    .line 66
    .line 67
    shr-int/lit8 v11, v9, 0x4

    .line 68
    .line 69
    and-int/lit8 v11, v11, 0x7

    .line 70
    .line 71
    aput v11, v7, v10

    .line 72
    .line 73
    add-int/lit8 v11, v4, 0x5

    .line 74
    .line 75
    shr-int/lit8 v9, v9, 0x7

    .line 76
    .line 77
    add-int/2addr v3, v2

    .line 78
    aget-byte v3, p1, v3

    .line 79
    .line 80
    and-int/lit16 v3, v3, 0xff

    .line 81
    .line 82
    shl-int/lit8 v12, v3, 0x1

    .line 83
    .line 84
    and-int/lit8 v12, v12, 0x7

    .line 85
    .line 86
    or-int/2addr v9, v12

    .line 87
    aput v9, v7, v11

    .line 88
    .line 89
    add-int/lit8 v9, v4, 0x6

    .line 90
    .line 91
    shr-int/lit8 v12, v3, 0x2

    .line 92
    .line 93
    and-int/lit8 v12, v12, 0x7

    .line 94
    .line 95
    aput v12, v7, v9

    .line 96
    .line 97
    add-int/lit8 v12, v4, 0x7

    .line 98
    .line 99
    shr-int/lit8 v3, v3, 0x5

    .line 100
    .line 101
    and-int/lit8 v3, v3, 0x7

    .line 102
    .line 103
    aput v3, v7, v12

    .line 104
    .line 105
    aget v3, v7, v4

    .line 106
    .line 107
    sub-int v3, v0, v3

    .line 108
    .line 109
    aput v3, v7, v4

    .line 110
    .line 111
    aget v3, v7, v6

    .line 112
    .line 113
    sub-int v3, v0, v3

    .line 114
    .line 115
    aput v3, v7, v6

    .line 116
    .line 117
    aget v3, v7, v8

    .line 118
    .line 119
    sub-int v3, v0, v3

    .line 120
    .line 121
    aput v3, v7, v8

    .line 122
    .line 123
    aget v3, v7, v5

    .line 124
    .line 125
    sub-int v3, v0, v3

    .line 126
    .line 127
    aput v3, v7, v5

    .line 128
    .line 129
    aget v3, v7, v10

    .line 130
    .line 131
    sub-int v3, v0, v3

    .line 132
    .line 133
    aput v3, v7, v10

    .line 134
    .line 135
    aget v3, v7, v11

    .line 136
    .line 137
    sub-int v3, v0, v3

    .line 138
    .line 139
    aput v3, v7, v11

    .line 140
    .line 141
    aget v3, v7, v9

    .line 142
    .line 143
    sub-int v3, v0, v3

    .line 144
    .line 145
    aput v3, v7, v9

    .line 146
    .line 147
    aget v3, v7, v12

    .line 148
    .line 149
    sub-int v3, v0, v3

    .line 150
    .line 151
    aput v3, v7, v12

    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_0
    const/4 v2, 0x4

    .line 158
    if-ne v0, v2, :cond_1

    .line 159
    .line 160
    :goto_1
    const/16 v3, 0x80

    .line 161
    .line 162
    if-ge v1, v3, :cond_1

    .line 163
    .line 164
    mul-int/lit8 v3, v1, 0x2

    .line 165
    .line 166
    add-int v4, p2, v1

    .line 167
    .line 168
    aget-byte v4, p1, v4

    .line 169
    .line 170
    and-int/lit8 v5, v4, 0xf

    .line 171
    .line 172
    iget-object v6, p0, Ll22;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v6, [I

    .line 175
    .line 176
    aput v5, v6, v3

    .line 177
    .line 178
    add-int/lit8 v5, v3, 0x1

    .line 179
    .line 180
    and-int/lit16 v4, v4, 0xff

    .line 181
    .line 182
    shr-int/2addr v4, v2

    .line 183
    aput v4, v6, v5

    .line 184
    .line 185
    aget v4, v6, v3

    .line 186
    .line 187
    sub-int v4, v0, v4

    .line 188
    .line 189
    aput v4, v6, v3

    .line 190
    .line 191
    aget v3, v6, v5

    .line 192
    .line 193
    sub-int v3, v0, v3

    .line 194
    .line 195
    aput v3, v6, v5

    .line 196
    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_1
    return-void
.end method

.method public g(Lvc7;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lvc7;->b:Lab8;

    .line 2
    .line 3
    iget-object v1, p0, Ll22;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v2, p0, Ll22;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/HashMap;

    .line 17
    .line 18
    iget-wide v3, v0, Lab8;->a:J

    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v0, v0, Lab8;->b:Lfi7;

    .line 32
    .line 33
    iget-object v0, v0, Lfi7;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ll22;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lea6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Ll22;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lea6;

    .line 14
    .line 15
    invoke-interface {v1}, Lea6;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmw6;

    .line 20
    .line 21
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lma2;

    .line 24
    .line 25
    invoke-virtual {p0}, Lma2;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lge0;

    .line 30
    .line 31
    new-instance v2, Le41;

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-direct {v2, v3, v0, v1, p0}, Le41;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public h(Lf59;)V
    .locals 14

    .line 1
    iget-object v0, p0, Ll22;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v7, v0

    .line 4
    check-cast v7, Lyf1;

    .line 5
    .line 6
    check-cast p1, Lm69;

    .line 7
    .line 8
    iget-object v0, p1, Lm69;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    .line 17
    .line 18
    const/16 v0, 0x4281

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 22
    .line 23
    .line 24
    iget-object v11, p1, Lm69;->f:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v12, p1, Lm69;->e:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v8, Lxz5;

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v13, 0x1

    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-direct/range {v8 .. v13}, Lxz5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, p0, v8}, Lyf1;->j(Lcom/google/android/gms/common/api/Status;Lxz5;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v2, Lb69;

    .line 41
    .line 42
    iget-object v0, p1, Lm69;->b:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p1, Lm69;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-wide v3, p1, Lm69;->c:J

    .line 47
    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "Bearer"

    .line 53
    .line 54
    invoke-direct {v2, v0, v1, v3, v4}, Lb69;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Ll22;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ls02;

    .line 60
    .line 61
    iget-object v0, v0, Ls02;->c:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    check-cast v1, Lke;

    .line 65
    .line 66
    iget-boolean p1, p1, Lm69;->d:Z

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-object p0, p0, Ll22;->c:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v8, p0

    .line 75
    check-cast v8, Ls02;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v4, "phone"

    .line 80
    .line 81
    invoke-virtual/range {v1 .. v8}, Lke;->t(Lb69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Ln59;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public init([B)V
    .locals 9

    .line 1
    iget-object v0, p0, Ll22;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Ll22;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    const/16 v3, 0x40

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    const/16 v6, 0x5c

    .line 21
    .line 22
    const/16 v7, 0x36

    .line 23
    .line 24
    if-ge v5, v2, :cond_0

    .line 25
    .line 26
    aget-byte v8, p1, v5

    .line 27
    .line 28
    xor-int/2addr v7, v8

    .line 29
    int-to-byte v7, v7

    .line 30
    aput-byte v7, v1, v5

    .line 31
    .line 32
    aget-byte v7, p1, v5

    .line 33
    .line 34
    xor-int/2addr v6, v7

    .line 35
    int-to-byte v6, v6

    .line 36
    aput-byte v6, v0, v5

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :goto_1
    if-ge v2, v3, :cond_1

    .line 42
    .line 43
    aput-byte v7, v1, v2

    .line 44
    .line 45
    aput-byte v6, v0, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p0, p0, Ll22;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lqg0;

    .line 53
    .line 54
    iget-object p1, p0, Lqg0;->a:Lhl2;

    .line 55
    .line 56
    invoke-interface {p1}, Lhl2;->reset()V

    .line 57
    .line 58
    .line 59
    array-length p1, v1

    .line 60
    iget-object p0, p0, Lqg0;->a:Lhl2;

    .line 61
    .line 62
    invoke-interface {p0, v1, v4, p1}, Lhl2;->update([BII)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    new-instance p0, Lh67;

    .line 67
    .line 68
    const-string p1, "Missing key data"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public k([BS)V
    .locals 10

    .line 1
    iget-object v0, p0, Ll22;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Loe;

    .line 4
    .line 5
    iget-object v1, p0, Ll22;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lg45;

    .line 8
    .line 9
    iget v7, v1, Lg45;->e:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v7, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x4

    .line 21
    if-ne v7, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move v3, v2

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Loe;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Llr6;

    .line 33
    .line 34
    const/16 v8, 0x88

    .line 35
    .line 36
    mul-int/lit16 v6, v3, 0x88

    .line 37
    .line 38
    new-array v5, v6, [B

    .line 39
    .line 40
    invoke-virtual {v0}, Lgo4;->reset()V

    .line 41
    .line 42
    .line 43
    int-to-byte v3, p2

    .line 44
    shr-int/lit8 p2, p2, 0x8

    .line 45
    .line 46
    int-to-byte p2, p2

    .line 47
    new-array v4, v2, [B

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    aput-byte v3, v4, v9

    .line 51
    .line 52
    aput-byte p2, v4, v1

    .line 53
    .line 54
    array-length p2, p1

    .line 55
    invoke-virtual {v0, p1, v9, p2}, Lgo4;->update([BII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4, v9, v2}, Lgo4;->update([BII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5, v9, v6}, Llr6;->m([BII)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    const/16 v4, 0x100

    .line 66
    .line 67
    move-object v2, p0

    .line 68
    invoke-static/range {v2 .. v7}, Ll22;->i(Ll22;II[BII)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    move v3, p0

    .line 73
    :goto_1
    const/16 p0, 0x100

    .line 74
    .line 75
    if-ge v3, p0, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v5, v9, v8}, Llr6;->m([BII)V

    .line 78
    .line 79
    .line 80
    rsub-int v4, v3, 0x100

    .line 81
    .line 82
    const/16 v6, 0x88

    .line 83
    .line 84
    invoke-static/range {v2 .. v7}, Ll22;->i(Ll22;II[BII)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    add-int/2addr v3, p0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    return-void

    .line 91
    :cond_2
    const-string p0, "Wrong Dilithium Eta!"

    .line 92
    .line 93
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public l(Lev5;Ljava/lang/String;)Lcv5;
    .locals 3

    .line 1
    iget-object v0, p0, Ll22;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Liv5;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Ll22;->n(Lev5;Ljava/lang/String;)Lcv5;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Liv5;->d()Lev5;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Ll22;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ll22;->o(Lev5;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v0}, Liv5;->d()Lev5;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eq v1, p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Liv5;->c()Lev5;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Ll22;->m(Lev5;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ll22;->p(Lev5;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0, p1, p2}, Ll22;->n(Lev5;Ljava/lang/String;)Lcv5;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_4
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public m(Lev5;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwq3;

    .line 4
    .line 5
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v2}, Lev5;->h(Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {p1}, Lpn5;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ll22;->p(Lev5;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz v1, :cond_7

    .line 24
    .line 25
    iget-object p0, v0, Lwq3;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Llb4;

    .line 28
    .line 29
    iget-object p1, v0, Lwq3;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ljava/io/BufferedWriter;

    .line 32
    .line 33
    iget-object v4, v0, Lwq3;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Lln5;

    .line 36
    .line 37
    iget v5, p0, Llb4;->c:I

    .line 38
    .line 39
    add-int/lit8 v5, v5, -0x1

    .line 40
    .line 41
    iput v5, p0, Llb4;->c:I

    .line 42
    .line 43
    invoke-virtual {p0, v5}, Llb4;->a(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget v6, p0, Llb4;->a:I

    .line 48
    .line 49
    if-lez v6, :cond_1

    .line 50
    .line 51
    iget v7, p0, Llb4;->b:I

    .line 52
    .line 53
    sub-int/2addr v7, v6

    .line 54
    iput v7, p0, Llb4;->b:I

    .line 55
    .line 56
    :cond_1
    iget p0, v0, Lwq3;->a:I

    .line 57
    .line 58
    const/16 v6, 0x3e

    .line 59
    .line 60
    const/16 v7, 0x2f

    .line 61
    .line 62
    const/4 v8, 0x2

    .line 63
    if-ne p0, v8, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v7}, Lwq3;->d(C)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v6}, Lwq3;->d(C)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v9, 0x3

    .line 73
    if-eq p0, v9, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Lwq3;->e(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget p0, v0, Lwq3;->a:I

    .line 79
    .line 80
    if-eq p0, v8, :cond_6

    .line 81
    .line 82
    const/16 p0, 0x3c

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lwq3;->d(C)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Lwq3;->d(C)V

    .line 88
    .line 89
    .line 90
    iget-object p0, v4, Lln5;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 95
    .line 96
    .line 97
    iget-object p0, v4, Lln5;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_4

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/16 p0, 0x3a

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v6}, Lwq3;->d(C)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_1
    const/4 p0, 0x4

    .line 128
    iput p0, v0, Lwq3;->a:I

    .line 129
    .line 130
    iget-object p0, v4, Lln5;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 135
    .line 136
    .line 137
    iget-object p0, v4, Lln5;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 145
    .line 146
    .line 147
    :cond_7
    return-void
.end method

.method public n(Lev5;Ljava/lang/String;)Lcv5;
    .locals 2

    .line 1
    new-instance v0, Lcv5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lx46;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lx46;-><init>(Lev5;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcv5;->b:Lx46;

    .line 12
    .line 13
    new-instance v1, Lfv5;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lfv5;-><init>(Lev5;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcv5;->a:Lfv5;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    iput v1, v0, Lcv5;->h:I

    .line 22
    .line 23
    iput-object p0, v0, Lcv5;->c:Ll22;

    .line 24
    .line 25
    iput-object p1, v0, Lcv5;->d:Lev5;

    .line 26
    .line 27
    iput-object p2, v0, Lcv5;->g:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Ll22;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Liv5;

    .line 34
    .line 35
    iget-object p1, p0, Liv5;->a:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    new-instance p0, Lsn5;

    .line 45
    .line 46
    const-string p1, "Can not have a null name"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public o(Lev5;)V
    .locals 14

    .line 1
    iget-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwq3;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {p1, v1}, Lev5;->h(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v4, 0x3a

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    iget-object v6, v0, Lwq3;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, Llb4;

    .line 25
    .line 26
    iget-object v7, v0, Lwq3;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v7, Lln5;

    .line 29
    .line 30
    iget v8, v6, Llb4;->c:I

    .line 31
    .line 32
    add-int/lit8 v9, v8, 0x1

    .line 33
    .line 34
    iput v9, v6, Llb4;->c:I

    .line 35
    .line 36
    invoke-virtual {v6, v8}, Llb4;->a(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    iget v9, v6, Llb4;->a:I

    .line 41
    .line 42
    if-lez v9, :cond_0

    .line 43
    .line 44
    iget v10, v6, Llb4;->b:I

    .line 45
    .line 46
    add-int/2addr v10, v9

    .line 47
    iput v10, v6, Llb4;->b:I

    .line 48
    .line 49
    :cond_0
    iget v6, v0, Lwq3;->a:I

    .line 50
    .line 51
    if-ne v6, v5, :cond_1

    .line 52
    .line 53
    iget-object v6, v7, Lln5;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const/16 v9, 0x3e

    .line 58
    .line 59
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v6, v0, Lwq3;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v6, Ljava/io/BufferedWriter;

    .line 65
    .line 66
    iget-object v9, v7, Lln5;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-virtual {v6, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 71
    .line 72
    .line 73
    iget-object v9, v7, Lln5;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 81
    .line 82
    .line 83
    iget-object v6, v7, Lln5;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v6, v7, Lln5;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v6, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const/16 v8, 0x3c

    .line 95
    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object v6, v7, Lln5;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v2, v7, Lln5;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_0
    iget-object v2, v7, Lln5;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iput v5, v0, Lwq3;->a:I

    .line 130
    .line 131
    :cond_4
    invoke-interface {p1}, Lev5;->getAttributes()Lxn5;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lfv5;

    .line 136
    .line 137
    invoke-virtual {v2}, Lfv5;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    const-string v7, "Start element required"

    .line 146
    .line 147
    const/16 v8, 0x3d

    .line 148
    .line 149
    const/16 v9, 0x20

    .line 150
    .line 151
    const/16 v10, 0x22

    .line 152
    .line 153
    if-eqz v6, :cond_8

    .line 154
    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    check-cast v11, Lev5;

    .line 166
    .line 167
    invoke-interface {v11}, Lpn5;->getValue()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    invoke-interface {v11, v1}, Lev5;->h(Z)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    iget v13, v0, Lwq3;->a:I

    .line 176
    .line 177
    if-ne v13, v5, :cond_7

    .line 178
    .line 179
    invoke-virtual {v0, v9}, Lwq3;->d(C)V

    .line 180
    .line 181
    .line 182
    iget-object v7, v0, Lwq3;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v7, Lln5;

    .line 185
    .line 186
    iget-object v9, v0, Lwq3;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v9, Ljava/io/BufferedWriter;

    .line 189
    .line 190
    iget-object v13, v7, Lln5;->b:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v13, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 195
    .line 196
    .line 197
    iget-object v7, v7, Lln5;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v7, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 202
    .line 203
    .line 204
    if-eqz v11, :cond_6

    .line 205
    .line 206
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-nez v7, :cond_5

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_5
    invoke-virtual {v9, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v4}, Ljava/io/Writer;->write(I)V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_2
    invoke-virtual {v9, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v8}, Lwq3;->d(C)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v10}, Lwq3;->d(C)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v12}, Lwq3;->a(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v10}, Lwq3;->d(C)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_7
    new-instance p0, Lsn5;

    .line 236
    .line 237
    invoke-direct {p0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_8
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p0, Ljava/util/HashSet;

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    invoke-interface {p1}, Lev5;->c()Lx46;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p0}, Lx46;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_c

    .line 261
    .line 262
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p0, v2}, Lx46;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    iget v6, v0, Lwq3;->a:I

    .line 273
    .line 274
    if-ne v6, v5, :cond_b

    .line 275
    .line 276
    invoke-virtual {v0, v9}, Lwq3;->d(C)V

    .line 277
    .line 278
    .line 279
    iget-object v6, v0, Lwq3;->b:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v6, Lln5;

    .line 282
    .line 283
    iget-object v11, v0, Lwq3;->d:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v11, Ljava/io/BufferedWriter;

    .line 286
    .line 287
    iget-object v12, v6, Lln5;->b:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v12, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-virtual {v11, v12}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 292
    .line 293
    .line 294
    iget-object v6, v6, Lln5;->b:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v6, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    .line 300
    .line 301
    sget-object v6, Lwq3;->e:[C

    .line 302
    .line 303
    invoke-virtual {v11, v6}, Ljava/io/Writer;->write([C)V

    .line 304
    .line 305
    .line 306
    if-eqz v3, :cond_a

    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-nez v6, :cond_9

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_9
    invoke-virtual {v0, v4}, Lwq3;->d(C)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v3}, Lwq3;->e(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :cond_a
    :goto_4
    invoke-virtual {v0, v8}, Lwq3;->d(C)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v10}, Lwq3;->d(C)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v2}, Lwq3;->a(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v10}, Lwq3;->d(C)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_b
    new-instance p0, Lsn5;

    .line 335
    .line 336
    invoke-direct {p0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p0

    .line 340
    :cond_c
    return-void
.end method

.method public p(Lev5;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lev5;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lpn5;->getValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Ll22;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Liv5;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v3, Lhv5;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lhv5;-><init>(Liv5;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v3}, Lhv5;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v4, 0x3

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lhv5;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lev5;

    .line 35
    .line 36
    if-eq v0, v4, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {v2}, Lev5;->a()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget-object p0, p0, Ll22;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lwq3;

    .line 47
    .line 48
    iget v2, p0, Lwq3;->a:I

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    if-ne v2, v3, :cond_2

    .line 52
    .line 53
    const/16 v2, 0x3e

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lwq3;->d(C)V

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 v2, 0x1

    .line 59
    if-ne v0, v2, :cond_3

    .line 60
    .line 61
    const-string v0, "<![CDATA["

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lwq3;->e(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lwq3;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "]]>"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lwq3;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p0, v1}, Lwq3;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    iput v4, p0, Lwq3;->a:I

    .line 79
    .line 80
    :cond_4
    const/4 p0, 0x0

    .line 81
    invoke-interface {p1, p0}, Lev5;->setValue(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public q()Leu9;
    .locals 3

    .line 1
    iget-object v0, p0, Ll22;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Ll22;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Ll22;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ldu9;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v1, Leu9;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Ll22;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ldu9;

    .line 37
    .line 38
    invoke-direct {v1, v0, v2, p0}, Leu9;-><init>(IILdu9;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_0
    const-string p0, "variant not set"

    .line 43
    .line 44
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    const-string p0, "tag size not set"

    .line 49
    .line 50
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    const-string p0, "key size not set"

    .line 55
    .line 56
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method public r(I)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 11
    .line 12
    shl-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Invalid key size %d; only 128-bit and 256-bit AES keys are supported"

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Ll22;->b:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ll22;->c:Ljava/lang/Object;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 17
    .line 18
    const-string v0, "Invalid tag size for AesCmacParameters: "

    .line 19
    .line 20
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Ll22;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Ll22;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, [I

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    if-ge v1, v3, :cond_1

    .line 25
    .line 26
    aget v2, v2, v1

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Ll22;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, [I

    .line 34
    .line 35
    array-length v2, v2

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    const-string v2, ", "

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p0, "]"

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public update([B)V
    .locals 0

    .line 11
    iget-object p0, p0, Ll22;->b:Ljava/lang/Object;

    check-cast p0, Lqg0;

    invoke-virtual {p0, p1}, Lqg0;->b([B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll22;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lqg0;

    .line 4
    .line 5
    iget-object p0, p0, Lqg0;->a:Lhl2;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3}, Lhl2;->update([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll22;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ls02;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ls02;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
