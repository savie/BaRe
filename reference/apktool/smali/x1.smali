.class public abstract Lx1;
.super Lq1;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final c:Lb1;


# instance fields
.field public final a:[Lb0;

.field public b:[Lb0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb1;

    .line 2
    .line 3
    const-class v1, Lx1;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v2, v1}, Lb1;-><init>(ILjava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lx1;->c:Lb1;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lc0;->d:[Lb0;

    iput-object v0, p0, Lx1;->a:[Lb0;

    iput-object v0, p0, Lx1;->b:[Lb0;

    return-void
.end method

.method public constructor <init>(Lc0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lc0;->c()[Lb0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lx1;->a:[Lb0;

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x2

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    :cond_0
    iput-object v0, p0, Lx1;->b:[Lb0;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string p0, "\'elementVector\' cannot be null"

    .line 22
    .line 23
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public constructor <init>(Z[Lb0;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lx1;->a:[Lb0;

    if-nez p1, :cond_1

    array-length p1, p2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-object p2, p0, Lx1;->b:[Lb0;

    return-void
.end method

.method public constructor <init>([Lb0;[Lb0;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lx1;->a:[Lb0;

    iput-object p2, p0, Lx1;->b:[Lb0;

    return-void
.end method

.method public static x(Lb0;)[B
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lb0;->d()Lq1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ly0;->i()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    const-string p0, "cannot encode object added to SET"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static y([B[B)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    and-int/lit16 v1, v1, 0xdf

    .line 5
    .line 6
    aget-byte v2, p1, v0

    .line 7
    .line 8
    and-int/lit16 v2, v2, 0xdf

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    array-length v1, p0

    .line 18
    array-length v2, p1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr v1, v3

    .line 24
    move v2, v3

    .line 25
    :goto_0
    if-ge v2, v1, :cond_4

    .line 26
    .line 27
    aget-byte v4, p0, v2

    .line 28
    .line 29
    aget-byte v5, p1, v2

    .line 30
    .line 31
    if-eq v4, v5, :cond_3

    .line 32
    .line 33
    and-int/lit16 p0, v4, 0xff

    .line 34
    .line 35
    and-int/lit16 p1, v5, 0xff

    .line 36
    .line 37
    if-ge p0, p1, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    return v0

    .line 41
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    aget-byte p0, p0, v1

    .line 45
    .line 46
    and-int/lit16 p0, p0, 0xff

    .line 47
    .line 48
    aget-byte p1, p1, v1

    .line 49
    .line 50
    and-int/lit16 p1, p1, 0xff

    .line 51
    .line 52
    if-gt p0, p1, :cond_5

    .line 53
    .line 54
    return v3

    .line 55
    :cond_5
    return v0
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    .line 1
    iget-object p0, p0, Lx1;->a:[Lb0;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    aget-object v2, p0, v0

    .line 11
    .line 12
    invoke-interface {v2}, Lb0;->d()Lq1;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lq1;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lv50;

    .line 2
    .line 3
    iget-object p0, p0, Lx1;->a:[Lb0;

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lc0;->d:[Lb0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, [Lb0;->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, [Lb0;

    .line 17
    .line 18
    :goto_0
    invoke-direct {v0, p0}, Lv50;-><init>([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final k(Lq1;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lx1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    check-cast p1, Lx1;

    .line 8
    .line 9
    iget-object v0, p0, Lx1;->a:[Lb0;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    iget-object v2, p1, Lx1;->a:[Lb0;

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    if-eq v2, v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lx1;->u()Lq1;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lu82;

    .line 23
    .line 24
    invoke-virtual {p1}, Lx1;->u()Lq1;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lu82;

    .line 29
    .line 30
    move v2, v1

    .line 31
    :goto_0
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    iget-object v3, p0, Lx1;->a:[Lb0;

    .line 34
    .line 35
    aget-object v3, v3, v2

    .line 36
    .line 37
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p1, Lx1;->a:[Lb0;

    .line 42
    .line 43
    aget-object v4, v4, v2

    .line 44
    .line 45
    invoke-interface {v4}, Lb0;->d()Lq1;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eq v3, v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Lq1;->k(Lq1;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    :goto_1
    return v1

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 p0, 0x1

    .line 62
    return p0
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lx1;->a:[Lb0;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p0, "[]"

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "["

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    aget-object v3, p0, v2

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    if-lt v2, v0, :cond_1

    .line 25
    .line 26
    const/16 p0, 0x5d

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    const-string v3, ", "

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_0
.end method

.method public u()Lq1;
    .locals 14

    .line 1
    iget-object v0, p0, Lx1;->b:[Lb0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Lx1;->a:[Lb0;

    .line 7
    .line 8
    invoke-virtual {v0}, [Lb0;->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Lb0;

    .line 13
    .line 14
    iput-object v0, p0, Lx1;->b:[Lb0;

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    const/4 v3, 0x2

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    aget-object v4, v0, v4

    .line 24
    .line 25
    aget-object v5, v0, v1

    .line 26
    .line 27
    invoke-static {v4}, Lx1;->x(Lb0;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v5}, Lx1;->x(Lb0;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-static {v7, v6}, Lx1;->y([B[B)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    move-object v13, v5

    .line 42
    move-object v5, v4

    .line 43
    move-object v4, v13

    .line 44
    move-object v13, v7

    .line 45
    move-object v7, v6

    .line 46
    move-object v6, v13

    .line 47
    :cond_1
    :goto_0
    if-ge v3, v2, :cond_6

    .line 48
    .line 49
    aget-object v8, v0, v3

    .line 50
    .line 51
    invoke-static {v8}, Lx1;->x(Lb0;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-static {v7, v9}, Lx1;->y([B[B)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    add-int/lit8 v6, v3, -0x2

    .line 62
    .line 63
    aput-object v4, v0, v6

    .line 64
    .line 65
    move-object v4, v5

    .line 66
    move-object v6, v7

    .line 67
    move-object v5, v8

    .line 68
    move-object v7, v9

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    invoke-static {v6, v9}, Lx1;->y([B[B)Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-eqz v10, :cond_3

    .line 75
    .line 76
    add-int/lit8 v6, v3, -0x2

    .line 77
    .line 78
    aput-object v4, v0, v6

    .line 79
    .line 80
    move-object v4, v8

    .line 81
    move-object v6, v9

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    add-int/lit8 v10, v3, -0x1

    .line 84
    .line 85
    :goto_1
    add-int/lit8 v11, v10, -0x1

    .line 86
    .line 87
    if-lez v11, :cond_5

    .line 88
    .line 89
    add-int/lit8 v10, v10, -0x2

    .line 90
    .line 91
    aget-object v10, v0, v10

    .line 92
    .line 93
    invoke-static {v10}, Lx1;->x(Lb0;)[B

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-static {v12, v9}, Lx1;->y([B[B)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    aput-object v10, v0, v11

    .line 105
    .line 106
    move v10, v11

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    :goto_2
    aput-object v8, v0, v11

    .line 109
    .line 110
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    add-int/lit8 v3, v2, -0x2

    .line 114
    .line 115
    aput-object v4, v0, v3

    .line 116
    .line 117
    sub-int/2addr v2, v1

    .line 118
    aput-object v5, v0, v2

    .line 119
    .line 120
    :cond_7
    :goto_4
    new-instance v0, Lu82;

    .line 121
    .line 122
    iget-object p0, p0, Lx1;->b:[Lb0;

    .line 123
    .line 124
    invoke-direct {v0, v1, p0}, Lx1;-><init>(Z[Lb0;)V

    .line 125
    .line 126
    .line 127
    const/4 p0, -0x1

    .line 128
    iput p0, v0, Lu82;->d:I

    .line 129
    .line 130
    return-object v0
.end method

.method public w()Lq1;
    .locals 2

    .line 1
    new-instance v0, Li92;

    .line 2
    .line 3
    iget-object v1, p0, Lx1;->a:[Lb0;

    .line 4
    .line 5
    iget-object p0, p0, Lx1;->b:[Lb0;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lx1;-><init>([Lb0;[Lb0;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    iput p0, v0, Li92;->d:I

    .line 12
    .line 13
    return-object v0
.end method
