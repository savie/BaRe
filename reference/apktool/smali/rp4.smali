.class public final Lrp4;
.super Lop4;


# instance fields
.field public final b:Lup4;

.field public final c:Llp4;

.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lup4;Llp4;[B[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lrp4;->b:Lup4;

    .line 6
    .line 7
    iput-object p2, p0, Lrp4;->c:Llp4;

    .line 8
    .line 9
    invoke-static {p4}, Lms8;->k([B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lrp4;->d:[B

    .line 14
    .line 15
    invoke-static {p3}, Lms8;->k([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lrp4;->e:[B

    .line 20
    .line 21
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lrp4;
    .locals 4

    .line 1
    instance-of v0, p0, Lrp4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lrp4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Ljava/io/DataInputStream;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Lup4;->e:Ltp4;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lup4;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sget-object v2, Llp4;->g:Lkp4;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Llp4;

    .line 45
    .line 46
    const/16 v2, 0x10

    .line 47
    .line 48
    new-array v2, v2, [B

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 51
    .line 52
    .line 53
    iget v3, v0, Lup4;->b:I

    .line 54
    .line 55
    new-array v3, v3, [B

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Lrp4;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1, v3, v2}, Lrp4;-><init>(Lup4;Llp4;[B[B)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_1
    instance-of v0, p0, [B

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 72
    .line 73
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 74
    .line 75
    check-cast p0, [B

    .line 76
    .line 77
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .line 82
    .line 83
    :try_start_1
    invoke-static {v0}, Lrp4;->a(Ljava/lang/Object;)Lrp4;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    move-object v1, v0

    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :goto_0
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 98
    .line 99
    .line 100
    :cond_2
    throw p0

    .line 101
    :cond_3
    instance-of v0, p0, Ljava/io/InputStream;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    check-cast p0, Ljava/io/InputStream;

    .line 106
    .line 107
    invoke-static {p0}, Liz1;->v(Ljava/io/InputStream;)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lrp4;->a(Ljava/lang/Object;)Lrp4;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_4
    const-string v0, "cannot parse "

    .line 117
    .line 118
    invoke-static {p0, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v1
.end method


# virtual methods
.method public final b()[B
    .locals 2

    .line 1
    new-instance v0, Lty3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lty3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lrp4;->b:Lup4;

    .line 8
    .line 9
    iget v1, v1, Lup4;->a:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lrp4;->c:Llp4;

    .line 15
    .line 16
    iget v1, v1, Llp4;->a:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lrp4;->d:[B

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lty3;->b([B)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lrp4;->e:[B

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lty3;->b([B)V

    .line 29
    .line 30
    .line 31
    iget-object p0, v0, Lty3;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    const-class v1, Lrp4;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lrp4;

    .line 18
    .line 19
    iget-object v1, p0, Lrp4;->b:Lup4;

    .line 20
    .line 21
    iget-object v2, p1, Lrp4;->b:Lup4;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget-object v1, p0, Lrp4;->c:Llp4;

    .line 31
    .line 32
    iget-object v2, p1, Lrp4;->c:Llp4;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    return v0

    .line 41
    :cond_3
    iget-object v1, p0, Lrp4;->d:[B

    .line 42
    .line 43
    iget-object v2, p1, Lrp4;->d:[B

    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    return v0

    .line 52
    :cond_4
    iget-object p0, p0, Lrp4;->e:[B

    .line 53
    .line 54
    iget-object p1, p1, Lrp4;->e:[B

    .line 55
    .line 56
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_5
    :goto_0
    return v0
.end method

.method public final getEncoded()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrp4;->b()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lrp4;->b:Lup4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lrp4;->c:Llp4;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lrp4;->d:[B

    .line 19
    .line 20
    invoke-static {v0}, Lms8;->x([B)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lrp4;->e:[B

    .line 28
    .line 29
    invoke-static {p0}, Lms8;->x([B)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr p0, v0

    .line 34
    return p0
.end method
