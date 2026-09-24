.class public final Lsp4;
.super Ljava/lang/Object;

# interfaces
.implements Lwv2;


# instance fields
.field public final a:I

.field public final b:Lmp4;

.field public final c:Lup4;

.field public final d:[[B


# direct methods
.method public constructor <init>(ILmp4;Lup4;[[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lsp4;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lsp4;->b:Lmp4;

    .line 7
    .line 8
    iput-object p3, p0, Lsp4;->c:Lup4;

    .line 9
    .line 10
    iput-object p4, p0, Lsp4;->d:[[B

    .line 11
    .line 12
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lsp4;
    .locals 7

    .line 1
    instance-of v0, p0, Lsp4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lsp4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Ljava/io/DataInputStream;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0}, Lmp4;->a(Ljava/lang/Object;)Lmp4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sget-object v3, Lup4;->e:Ltp4;

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lup4;

    .line 38
    .line 39
    iget v3, v2, Lup4;->c:I

    .line 40
    .line 41
    new-array v4, v3, [[B

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_0
    if-ge v5, v3, :cond_1

    .line 45
    .line 46
    iget v6, v2, Lup4;->b:I

    .line 47
    .line 48
    new-array v6, v6, [B

    .line 49
    .line 50
    aput-object v6, v4, v5

    .line 51
    .line 52
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lsp4;

    .line 59
    .line 60
    invoke-direct {v0, v1, p0, v2, v4}, Lsp4;-><init>(ILmp4;Lup4;[[B)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    instance-of v0, p0, [B

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 70
    .line 71
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 72
    .line 73
    check-cast p0, [B

    .line 74
    .line 75
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-static {v0}, Lsp4;->a(Ljava/lang/Object;)Lsp4;

    .line 82
    .line 83
    .line 84
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    move-object v1, v0

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :goto_1
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 96
    .line 97
    .line 98
    :cond_3
    throw p0

    .line 99
    :cond_4
    instance-of v0, p0, Ljava/io/InputStream;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    check-cast p0, Ljava/io/InputStream;

    .line 104
    .line 105
    invoke-static {p0}, Liz1;->v(Ljava/io/InputStream;)[B

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lsp4;->a(Ljava/lang/Object;)Lsp4;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_5
    const-string v0, "cannot parse "

    .line 115
    .line 116
    invoke-static {p0, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v1
.end method


# virtual methods
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
    if-eqz p1, :cond_7

    .line 7
    .line 8
    const-class v1, Lsp4;

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
    check-cast p1, Lsp4;

    .line 18
    .line 19
    iget v1, p0, Lsp4;->a:I

    .line 20
    .line 21
    iget v2, p1, Lsp4;->a:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p1, Lsp4;->b:Lmp4;

    .line 27
    .line 28
    iget-object v2, p0, Lsp4;->b:Lmp4;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lmp4;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-eqz v1, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object v1, p1, Lsp4;->c:Lup4;

    .line 43
    .line 44
    iget-object v2, p0, Lsp4;->c:Lup4;

    .line 45
    .line 46
    if-eqz v2, :cond_5

    .line 47
    .line 48
    if-eq v2, v1, :cond_6

    .line 49
    .line 50
    return v0

    .line 51
    :cond_5
    if-eqz v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object p0, p0, Lsp4;->d:[[B

    .line 55
    .line 56
    iget-object p1, p1, Lsp4;->d:[[B

    .line 57
    .line 58
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_7
    :goto_0
    return v0
.end method

.method public final getEncoded()[B
    .locals 4

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
    iget-object v1, v0, Lty3;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    iget v2, p0, Lsp4;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lty3;->g(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lsp4;->b:Lmp4;

    .line 17
    .line 18
    invoke-virtual {v2}, Lmp4;->getEncoded()[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lty3;->b([B)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lsp4;->c:Lup4;

    .line 26
    .line 27
    iget v2, v2, Lup4;->a:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lty3;->g(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lsp4;->d:[[B

    .line 33
    .line 34
    :try_start_0
    array-length v0, p0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v0, :cond_0

    .line 37
    .line 38
    aget-object v3, p0, v2

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lsp4;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lsp4;->b:Lmp4;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lmp4;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :goto_0
    add-int/2addr v0, v2

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v2, p0, Lsp4;->c:Lup4;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_1
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-object p0, p0, Lsp4;->d:[[B

    .line 31
    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v0

    .line 37
    return p0
.end method
