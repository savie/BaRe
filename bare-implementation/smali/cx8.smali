.class public final Lcx8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final n:Lnz8;


# instance fields
.field public a:B

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Llz8;

.field public f:Llz8;

.field public k:Llz8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0x5455

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcx8;->n:Lnz8;

    .line 9
    .line 10
    return-void
.end method

.method public static i(Ljava/nio/file/attribute/FileTime;)Llz8;
    .locals 4

    .line 1
    sget-object v0, Lha3;->a:Ljava/math/MathContext;

    .line 2
    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, -0x80000000

    .line 10
    .line 11
    .line 12
    cmp-long p0, v2, v0

    .line 13
    .line 14
    if-gtz p0, :cond_0

    .line 15
    .line 16
    const-wide/32 v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    cmp-long p0, v0, v2

    .line 20
    .line 21
    if-gtz p0, :cond_0

    .line 22
    .line 23
    new-instance p0, Llz8;

    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Llz8;-><init>(J)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "X5455 timestamps must fit in a signed 32 bit integer: "

    .line 30
    .line 31
    invoke-static {v0, v1, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static k(Llz8;)Ljava/util/Date;
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/Date;

    .line 4
    .line 5
    iget-wide v1, p0, Llz8;->a:J

    .line 6
    .line 7
    long-to-int p0, v1

    .line 8
    int-to-long v1, p0

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    mul-long/2addr v1, v3

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lcx8;->n:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 5

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcx8;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iget-boolean v4, p0, Lcx8;->c:Z

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-object v4, p0, Lcx8;->f:Llz8;

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move v4, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v2

    .line 25
    :goto_1
    add-int/2addr v1, v4

    .line 26
    iget-boolean v4, p0, Lcx8;->d:Z

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcx8;->k:Llz8;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_2
    add-int/2addr v1, v2

    .line 36
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final c([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcx8;->j(B)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcx8;->e:Llz8;

    .line 7
    .line 8
    iput-object v1, p0, Lcx8;->f:Llz8;

    .line 9
    .line 10
    iput-object v1, p0, Lcx8;->k:Llz8;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-lt p3, v1, :cond_3

    .line 14
    .line 15
    add-int/2addr p3, p2

    .line 16
    add-int/lit8 v1, p2, 0x1

    .line 17
    .line 18
    aget-byte v2, p1, p2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcx8;->j(B)V

    .line 21
    .line 22
    .line 23
    iget-boolean v2, p0, Lcx8;->b:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x5

    .line 28
    .line 29
    if-gt p2, p3, :cond_0

    .line 30
    .line 31
    new-instance v2, Llz8;

    .line 32
    .line 33
    invoke-direct {v2, p1, v1}, Llz8;-><init>([BI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcx8;->e:Llz8;

    .line 37
    .line 38
    move v1, p2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-boolean v0, p0, Lcx8;->b:Z

    .line 41
    .line 42
    :goto_0
    iget-boolean p2, p0, Lcx8;->c:Z

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    add-int/lit8 p2, v1, 0x4

    .line 47
    .line 48
    if-gt p2, p3, :cond_1

    .line 49
    .line 50
    new-instance v2, Llz8;

    .line 51
    .line 52
    invoke-direct {v2, p1, v1}, Llz8;-><init>([BI)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcx8;->f:Llz8;

    .line 56
    .line 57
    move v1, p2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iput-boolean v0, p0, Lcx8;->c:Z

    .line 60
    .line 61
    :goto_1
    iget-boolean p2, p0, Lcx8;->d:Z

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    add-int/lit8 p2, v1, 0x4

    .line 66
    .line 67
    if-gt p2, p3, :cond_2

    .line 68
    .line 69
    new-instance p2, Llz8;

    .line 70
    .line 71
    invoke-direct {p2, p1, v1}, Llz8;-><init>([BI)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lcx8;->k:Llz8;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iput-boolean v0, p0, Lcx8;->d:Z

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    .line 81
    .line 82
    const-string p1, "X5455_ExtendedTimestamp too short, only "

    .line 83
    .line 84
    const-string p2, " bytes"

    .line 85
    .line 86
    invoke-static {p3, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcx8;->b()Lnz8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lnz8;->a:I

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-byte v1, v0, v1

    .line 11
    .line 12
    iget-boolean v2, p0, Lcx8;->b:Z

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    aput-byte v4, v0, v1

    .line 19
    .line 20
    iget-object v2, p0, Lcx8;->e:Llz8;

    .line 21
    .line 22
    iget-wide v5, v2, Llz8;->a:J

    .line 23
    .line 24
    invoke-static {v5, v6}, Llz8;->a(J)[B

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    :cond_0
    iget-boolean v2, p0, Lcx8;->c:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcx8;->f:Llz8;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    aget-byte v5, v0, v1

    .line 41
    .line 42
    or-int/lit8 v5, v5, 0x2

    .line 43
    .line 44
    int-to-byte v5, v5

    .line 45
    aput-byte v5, v0, v1

    .line 46
    .line 47
    iget-wide v5, v2, Llz8;->a:J

    .line 48
    .line 49
    invoke-static {v5, v6}, Llz8;->a(J)[B

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x4

    .line 57
    .line 58
    :cond_1
    iget-boolean v2, p0, Lcx8;->d:Z

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object p0, p0, Lcx8;->k:Llz8;

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    aget-byte v2, v0, v1

    .line 67
    .line 68
    or-int/2addr v2, v3

    .line 69
    int-to-byte v2, v2

    .line 70
    aput-byte v2, v0, v1

    .line 71
    .line 72
    iget-wide v5, p0, Llz8;->a:J

    .line 73
    .line 74
    invoke-static {v5, v6}, Llz8;->a(J)[B

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-object v0
.end method

.method public final e()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcx8;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcx8;->f()Lnz8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Lnz8;->a:I

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcx8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcx8;

    .line 7
    .line 8
    iget-byte v0, p0, Lcx8;->a:B

    .line 9
    .line 10
    and-int/lit8 v0, v0, 0x7

    .line 11
    .line 12
    iget-byte v2, p1, Lcx8;->a:B

    .line 13
    .line 14
    and-int/lit8 v2, v2, 0x7

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcx8;->e:Llz8;

    .line 19
    .line 20
    iget-object v2, p1, Lcx8;->e:Llz8;

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcx8;->f:Llz8;

    .line 29
    .line 30
    iget-object v2, p1, Lcx8;->f:Llz8;

    .line 31
    .line 32
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lcx8;->k:Llz8;

    .line 39
    .line 40
    iget-object p1, p1, Lcx8;->k:Llz8;

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_0
    return v1
.end method

.method public final f()Lnz8;
    .locals 1

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcx8;->b:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    add-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lnz8;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final h([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcx8;->j(B)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcx8;->e:Llz8;

    .line 7
    .line 8
    iput-object v0, p0, Lcx8;->f:Llz8;

    .line 9
    .line 10
    iput-object v0, p0, Lcx8;->k:Llz8;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcx8;->c([BII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-byte v0, p0, Lcx8;->a:B

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x7

    .line 4
    .line 5
    mul-int/lit8 v0, v0, -0x7b

    .line 6
    .line 7
    iget-object v1, p0, Lcx8;->e:Llz8;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-wide v1, v1, Llz8;->a:J

    .line 12
    .line 13
    long-to-int v1, v1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lcx8;->f:Llz8;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-wide v1, v1, Llz8;->a:J

    .line 20
    .line 21
    long-to-int v1, v1

    .line 22
    const/16 v2, 0xb

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    xor-int/2addr v0, v1

    .line 29
    :cond_1
    iget-object p0, p0, Lcx8;->k:Llz8;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    iget-wide v1, p0, Llz8;->a:J

    .line 34
    .line 35
    long-to-int p0, v1

    .line 36
    const/16 v1, 0x16

    .line 37
    .line 38
    invoke-static {p0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    xor-int/2addr p0, v0

    .line 43
    return p0

    .line 44
    :cond_2
    return v0
.end method

.method public final j(B)V
    .locals 4

    .line 1
    iput-byte p1, p0, Lcx8;->a:B

    .line 2
    .line 3
    and-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iput-boolean v0, p0, Lcx8;->b:Z

    .line 13
    .line 14
    and-int/lit8 v0, p1, 0x2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_1
    iput-boolean v0, p0, Lcx8;->c:Z

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    and-int/2addr p1, v0

    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    iput-boolean v1, p0, Lcx8;->d:Z

    .line 30
    .line 31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x5455 Zip Extra Field: Flags="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-byte v1, p0, Lcx8;->a:B

    .line 9
    .line 10
    invoke-static {v1}, Lpz8;->e(I)B

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcx8;->b:Z

    .line 27
    .line 28
    const-string v2, "] "

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcx8;->e:Llz8;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-static {v1}, Lcx8;->k(Llz8;)Ljava/util/Date;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, " Modify:["

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-boolean v1, p0, Lcx8;->c:Z

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcx8;->f:Llz8;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-static {v1}, Lcx8;->k(Llz8;)Ljava/util/Date;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, " Access:["

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-boolean v1, p0, Lcx8;->d:Z

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object p0, p0, Lcx8;->k:Llz8;

    .line 79
    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    invoke-static {p0}, Lcx8;->k(Llz8;)Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v1, " Create:["

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method
