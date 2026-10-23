.class public final Ldx8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lnz8;

.field public static final e:Lnz8;

.field public static final f:Ljava/math/BigInteger;


# instance fields
.field public a:I

.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0x7875

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ldx8;->d:Lnz8;

    .line 9
    .line 10
    new-instance v0, Lnz8;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ldx8;->e:Lnz8;

    .line 17
    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Ldx8;->f:Ljava/math/BigInteger;

    .line 25
    .line 26
    return-void
.end method

.method public static i([B)[B
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    aget-byte v3, p0, v1

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    :goto_1
    array-length v0, p0

    .line 21
    sub-int/2addr v0, v2

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-array v1, v0, [B

    .line 28
    .line 29
    array-length v3, p0

    .line 30
    sub-int/2addr v3, v2

    .line 31
    sub-int v3, v0, v3

    .line 32
    .line 33
    sub-int/2addr v0, v3

    .line 34
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Ldx8;->d:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 2

    .line 1
    iget-object v0, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ldx8;->i([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lod2;->m(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ldx8;->i([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lod2;->m(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    new-instance v1, Lnz8;

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x3

    .line 32
    .line 33
    add-int/2addr v0, p0

    .line 34
    invoke-direct {v1, v0}, Lnz8;-><init>(I)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public final c([BII)V
    .locals 6

    .line 1
    sget-object v0, Ldx8;->f:Ljava/math/BigInteger;

    .line 2
    .line 3
    iput-object v0, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 4
    .line 5
    iput-object v0, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    const-string v1, " bytes"

    .line 9
    .line 10
    if-lt p3, v0, :cond_2

    .line 11
    .line 12
    add-int/lit8 v0, p2, 0x1

    .line 13
    .line 14
    aget-byte v2, p1, p2

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p0, Ldx8;->a:I

    .line 21
    .line 22
    add-int/lit8 p2, p2, 0x2

    .line 23
    .line 24
    aget-byte v0, p1, v0

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v2, v0, 0x3

    .line 31
    .line 32
    const-string v3, " doesn\'t fit into "

    .line 33
    .line 34
    if-gt v2, p3, :cond_1

    .line 35
    .line 36
    add-int/2addr v0, p2

    .line 37
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance v4, Ljava/math/BigInteger;

    .line 42
    .line 43
    invoke-static {p2}, Lpz8;->d([B)V

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-direct {v4, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 48
    .line 49
    .line 50
    iput-object v4, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 51
    .line 52
    add-int/lit8 p2, v0, 0x1

    .line 53
    .line 54
    aget-byte v0, p1, v0

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v2, v0

    .line 61
    if-gt v2, p3, :cond_0

    .line 62
    .line 63
    add-int/2addr v0, p2

    .line 64
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/math/BigInteger;

    .line 69
    .line 70
    invoke-static {p1}, Lpz8;->d([B)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    .line 80
    .line 81
    const-string p1, "X7875_NewUnix invalid: gidSize "

    .line 82
    .line 83
    invoke-static {p1, v0, v3, v1, p3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    .line 92
    .line 93
    const-string p1, "X7875_NewUnix invalid: uidSize "

    .line 94
    .line 95
    invoke-static {p1, v0, v3, v1, p3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    .line 104
    .line 105
    const-string p1, "X7875_NewUnix length is too short, only "

    .line 106
    .line 107
    invoke-static {p3, p1, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
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
    .locals 8

    .line 1
    iget-object v0, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Ldx8;->i([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lod2;->m(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v1}, Ldx8;->i([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lod2;->m(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/lit8 v4, v2, 0x3

    .line 30
    .line 31
    add-int v5, v4, v3

    .line 32
    .line 33
    new-array v5, v5, [B

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Lpz8;->d([B)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, Lpz8;->d([B)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget p0, p0, Ldx8;->a:I

    .line 46
    .line 47
    invoke-static {p0}, Lpz8;->e(I)B

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 v6, 0x0

    .line 52
    aput-byte p0, v5, v6

    .line 53
    .line 54
    invoke-static {v2}, Lpz8;->e(I)B

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v7, 0x1

    .line 59
    aput-byte p0, v5, v7

    .line 60
    .line 61
    const/4 p0, 0x2

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-static {v0, v6, v5, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/2addr p0, v2

    .line 68
    invoke-static {v3}, Lpz8;->e(I)B

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    aput-byte v0, v5, p0

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-static {v1, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-object v5
.end method

.method public final e()[B
    .locals 0

    .line 1
    sget-object p0, Lwx3;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ldx8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ldx8;

    .line 7
    .line 8
    iget v0, p0, Ldx8;->a:I

    .line 9
    .line 10
    iget v2, p1, Ldx8;->a:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 15
    .line 16
    iget-object v2, p1, Ldx8;->b:Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 25
    .line 26
    iget-object p1, p1, Ldx8;->c:Ljava/math/BigInteger;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    return v1
.end method

.method public final f()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Ldx8;->e:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h([BII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const v0, -0x12d687

    .line 2
    .line 3
    .line 4
    iget v1, p0, Ldx8;->a:I

    .line 5
    .line 6
    mul-int/2addr v1, v0

    .line 7
    iget-object v0, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    xor-int/2addr v0, v1

    .line 20
    iget-object p0, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    xor-int/2addr p0, v0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x7875 Zip Extra Field: UID="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " GID="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
