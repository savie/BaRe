.class public final Lam5;
.super Ls51;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public d:Ljava/math/BigInteger;

.field public e:Lg1;

.field public f:[B

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "NegTokenTarg"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Ls51;-><init>(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final c(Lr2;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lz0;->a:Lm2;

    .line 2
    .line 3
    iget v1, v0, Lm2;->b:I

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "Expected the responseToken (OCTET_STRING) contents, not: "

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of v0, p1, Lk1;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p1, Lk1;

    .line 27
    .line 28
    iget-object p1, p1, La2;->b:[B

    .line 29
    .line 30
    array-length v0, p1

    .line 31
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lam5;->g:[B

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {p1, v3}, Lg84;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance p0, Lfk7;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Unknown Object Tag "

    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v0, v0, Lm2;->b:I

    .line 52
    .line 53
    const-string v1, " encountered."

    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    instance-of v0, p1, Lk1;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    check-cast p1, Lk1;

    .line 72
    .line 73
    iget-object p1, p1, La2;->b:[B

    .line 74
    .line 75
    array-length v0, p1

    .line 76
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lam5;->f:[B

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    invoke-static {p1, v3}, Lg84;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    instance-of v0, p1, Lg1;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    check-cast p1, Lg1;

    .line 96
    .line 97
    iput-object p1, p0, Lam5;->e:Lg1;

    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    const-string p0, "Expected the supportedMech (OBJECT IDENTIFIER) contents, not: "

    .line 101
    .line 102
    invoke-static {p1, p0}, Lg84;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    instance-of v0, p1, Lh0;

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    check-cast p1, Lh0;

    .line 115
    .line 116
    iget-object p1, p1, Lh0;->c:Ljava/math/BigInteger;

    .line 117
    .line 118
    iput-object p1, p0, Lam5;->d:Ljava/math/BigInteger;

    .line 119
    .line 120
    return-void

    .line 121
    :cond_7
    new-instance p1, Lfk7;

    .line 122
    .line 123
    iget-object p0, p0, Lam5;->e:Lg1;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, "Expected the negResult (ENUMERATED) contents, not: "

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method

.method public final e(Ljw0;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lam5;->d:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    sget-object v2, Ld0;->c:Ld0;

    .line 9
    .line 10
    sget-object v3, Ln2;->d:Ln2;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    new-instance v1, Lr2;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static {v3, v5}, Lm2;->b(Ln2;I)Lm2;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5, v2}, Lm2;->a(Ld0;)Lm2;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lh0;

    .line 27
    .line 28
    iget-object v7, p0, Lam5;->d:Ljava/math/BigInteger;

    .line 29
    .line 30
    invoke-direct {v6, v7}, Lh0;-><init>(Ljava/math/BigInteger;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v5, v6, v4}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Lam5;->e:Lg1;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    new-instance v1, Lr2;

    .line 44
    .line 45
    invoke-static {v3, v4}, Lm2;->b(Ln2;I)Lm2;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5, v2}, Lm2;->a(Ld0;)Lm2;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, p0, Lam5;->e:Lg1;

    .line 54
    .line 55
    invoke-direct {v1, v5, v6, v4}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v1, p0, Lam5;->f:[B

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    array-length v1, v1

    .line 66
    if-lez v1, :cond_2

    .line 67
    .line 68
    new-instance v1, Lr2;

    .line 69
    .line 70
    const/4 v5, 0x2

    .line 71
    invoke-static {v3, v5}, Lm2;->b(Ln2;I)Lm2;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, v2}, Lm2;->a(Ld0;)Lm2;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance v6, Lk1;

    .line 80
    .line 81
    iget-object v7, p0, Lam5;->f:[B

    .line 82
    .line 83
    invoke-direct {v6, v7}, Lk1;-><init>([B)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v5, v6, v4}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v1, p0, Lam5;->g:[B

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    array-length v1, v1

    .line 97
    if-lez v1, :cond_3

    .line 98
    .line 99
    new-instance v1, Lr2;

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    invoke-static {v3, v5}, Lm2;->b(Ln2;I)Lm2;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3, v2}, Lm2;->a(Ld0;)Lm2;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Lk1;

    .line 111
    .line 112
    iget-object v5, p0, Lam5;->g:[B

    .line 113
    .line 114
    invoke-direct {v3, v5}, Lk1;-><init>([B)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2, v3, v4}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    new-instance v1, Lw1;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Lw1;-><init>(Ljava/util/ArrayList;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1, v1}, Lam5;->f(Ljw0;Lw1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_0
    move-exception p0

    .line 133
    new-instance p1, Lfk7;

    .line 134
    .line 135
    const-string v0, "Could not write NegTokenTarg to buffer"

    .line 136
    .line 137
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public final f(Ljw0;Lw1;)V
    .locals 3

    .line 1
    new-instance p0, Lr2;

    .line 2
    .line 3
    sget-object v0, Ln2;->d:Ln2;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lm2;->b(Ln2;I)Lm2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Ld0;->c:Ld0;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lm2;->a(Ld0;)Lm2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0, p2, v1}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ln1;

    .line 25
    .line 26
    new-instance v1, Lnh4;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, p2}, Ln1;-><init>(Lnh4;Ljava/io/ByteArrayOutputStream;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v0, p0}, Ln1;->a(Lz0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    array-length p2, p0

    .line 46
    invoke-virtual {p1, p0, p2}, Low0;->i([BI)Low0;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    throw p0
.end method

.method public final g([B)V
    .locals 3

    .line 1
    new-instance v0, Ljw0;

    .line 2
    .line 3
    sget-object v1, Lvw2;->b:Luw2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, p1, v2, v1}, Low0;-><init>([BZLvw2;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance p1, Lp0;

    .line 10
    .line 11
    new-instance v1, Lg82;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, v2}, Lnh4;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lhw0;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lhw0;-><init>(Ljw0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v1, v2}, Lp0;-><init>(Lg82;Lhw0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {p1}, Lp0;->g()Lz0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Ls51;->b(Lz0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Lfk7;

    .line 48
    .line 49
    const-string v0, "Could not read NegTokenTarg from buffer"

    .line 50
    .line 51
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
