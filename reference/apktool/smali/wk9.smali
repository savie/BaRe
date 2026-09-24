.class public Lwk9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lwk9;


# instance fields
.field public a:I

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwk9;

    .line 2
    .line 3
    sget-object v1, Lkl9;->a:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lwk9;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lwk9;->c:Lwk9;

    .line 9
    .line 10
    sget v0, Lqk9;->a:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lwk9;->a:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lwk9;->b:[B

    .line 11
    .line 12
    return-void
.end method

.method public static k(III)I
    .locals 3

    .line 1
    or-int v0, p0, p1

    .line 2
    .line 3
    sub-int v1, p1, p0

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    sub-int v2, p2, p1

    .line 7
    .line 8
    or-int/2addr v0, v2

    .line 9
    if-gez v0, :cond_2

    .line 10
    .line 11
    if-ltz p0, :cond_1

    .line 12
    .line 13
    if-ge p1, p0, :cond_0

    .line 14
    .line 15
    const-string p2, "Beginning index larger than ending index: "

    .line 16
    .line 17
    const-string v0, ", "

    .line 18
    .line 19
    invoke-static {p2, p0, p1, v0}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "End index: "

    .line 29
    .line 30
    const-string v0, " >= "

    .line 31
    .line 32
    invoke-static {p0, p1, p2, v0}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "Beginning index: "

    .line 41
    .line 42
    const-string p2, " < 0"

    .line 43
    .line 44
    invoke-static {p0, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v1
.end method

.method public static l([BI)Lwk9;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v1, p1, v0}, Lwk9;->k(III)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwk9;

    .line 7
    .line 8
    new-array v2, p1, [B

    .line 9
    .line 10
    invoke-static {p0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lwk9;-><init>([B)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public c(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lwk9;->b:[B

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public d(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lwk9;->b:[B

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public e()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, Lwk9;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lwk9;->f()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    move-object v2, p1

    .line 15
    check-cast v2, Lwk9;

    .line 16
    .line 17
    invoke-virtual {v2}, Lwk9;->f()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq v0, v2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p0}, Lwk9;->f()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    instance-of v0, p1, Lwk9;

    .line 32
    .line 33
    if-eqz v0, :cond_a

    .line 34
    .line 35
    check-cast p1, Lwk9;

    .line 36
    .line 37
    iget v0, p0, Lwk9;->a:I

    .line 38
    .line 39
    iget v2, p1, Lwk9;->a:I

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    if-ne v0, v2, :cond_5

    .line 46
    .line 47
    :cond_4
    invoke-virtual {p0}, Lwk9;->f()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1}, Lwk9;->f()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-gt v0, v2, :cond_9

    .line 56
    .line 57
    invoke-virtual {p1}, Lwk9;->f()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-gt v0, v2, :cond_8

    .line 62
    .line 63
    iget-object v2, p1, Lwk9;->b:[B

    .line 64
    .line 65
    invoke-virtual {p0}, Lwk9;->e()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v0

    .line 70
    invoke-virtual {p0}, Lwk9;->e()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1}, Lwk9;->e()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    :goto_0
    if-ge v0, v3, :cond_7

    .line 79
    .line 80
    iget-object v4, p0, Lwk9;->b:[B

    .line 81
    .line 82
    aget-byte v4, v4, v0

    .line 83
    .line 84
    aget-byte v5, v2, p1

    .line 85
    .line 86
    if-eq v4, v5, :cond_6

    .line 87
    .line 88
    :cond_5
    :goto_1
    return v1

    .line 89
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    add-int/lit8 p1, p1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    :goto_2
    const/4 p0, 0x1

    .line 95
    return p0

    .line 96
    :cond_8
    invoke-virtual {p1}, Lwk9;->f()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    const-string p1, "Ran off end of other: 0, "

    .line 101
    .line 102
    const-string v2, ", "

    .line 103
    .line 104
    invoke-static {p1, v0, p0, v2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :cond_9
    invoke-virtual {p0}, Lwk9;->f()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-static {v0, p0}, Ll0;->c(II)V

    .line 117
    .line 118
    .line 119
    return v1

    .line 120
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    return p0
.end method

.method public f()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwk9;->b:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public g([BI)V
    .locals 1

    .line 1
    iget-object p0, p0, Lwk9;->b:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lwk9;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lwk9;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lwk9;->e()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lkl9;->a:[B

    .line 14
    .line 15
    move v3, v0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    add-int v4, v1, v0

    .line 18
    .line 19
    if-ge v2, v4, :cond_0

    .line 20
    .line 21
    mul-int/lit8 v3, v3, 0x1f

    .line 22
    .line 23
    iget-object v4, p0, Lwk9;->b:[B

    .line 24
    .line 25
    aget-byte v4, v4, v2

    .line 26
    .line 27
    add-int/2addr v3, v4

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-nez v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    :cond_1
    iput v3, p0, Lwk9;->a:I

    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    return v0
.end method

.method public final i()Ljava/io/ByteArrayInputStream;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lwk9;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lwk9;->f()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object p0, p0, Lwk9;->b:[B

    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lrk9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrk9;-><init>(Lwk9;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final o()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwk9;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkl9;->a:[B

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-array v1, v0, [B

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Lwk9;->g([BI)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lwk9;->f()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lwk9;->f()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x32

    .line 20
    .line 21
    if-gt v2, v3, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lk55;->L(Lwk9;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lwk9;->f()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/16 v4, 0x2f

    .line 34
    .line 35
    invoke-static {v3, v4, v2}, Lwk9;->k(III)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object p0, Lwk9;->c:Lwk9;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v3, Luk9;

    .line 45
    .line 46
    invoke-virtual {p0}, Lwk9;->e()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object p0, p0, Lwk9;->b:[B

    .line 51
    .line 52
    invoke-direct {v3, p0, v4, v2}, Luk9;-><init>([BII)V

    .line 53
    .line 54
    .line 55
    move-object p0, v3

    .line 56
    :goto_0
    invoke-static {p0}, Lk55;->L(Lwk9;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v2, "..."

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_1
    const-string v2, " size="

    .line 67
    .line 68
    const-string v3, " contents=\""

    .line 69
    .line 70
    const-string v4, "<ByteString@"

    .line 71
    .line 72
    invoke-static {v4, v0, v2, v1, v3}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "\">"

    .line 77
    .line 78
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
