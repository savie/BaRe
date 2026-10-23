.class public abstract Low0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:[B

.field public final b:Lvw2;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Low0;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x100

    .line 17
    invoke-static {v0}, Low0;->d(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-object v2, Lvw2;->b:Luw2;

    invoke-direct {p0, v0, v1, v2}, Low0;-><init>([BZLvw2;)V

    return-void
.end method

.method public constructor <init>([BZLvw2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Low0;->a:[B

    .line 5
    .line 6
    iput-object p3, p0, Low0;->b:Lvw2;

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    iput p3, p0, Low0;->c:I

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    array-length p3, p1

    .line 14
    :cond_0
    iput p3, p0, Low0;->d:I

    .line 15
    .line 16
    return-void
.end method

.method public static d(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    if-ge v0, p0, :cond_1

    .line 3
    .line 4
    shl-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "Cannot get next power of 2; "

    .line 10
    .line 11
    const-string v1, " is too large"

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Low0;->d:I

    .line 2
    .line 3
    iget p0, p0, Low0;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Low0;->a:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Low0;->d:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    add-int/2addr v1, p1

    .line 10
    invoke-static {v1}, Low0;->d(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    iget-object v0, p0, Low0;->a:[B

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Low0;->a:[B

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final c()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Low0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    new-array v2, v0, [B

    .line 9
    .line 10
    iget-object v3, p0, Low0;->a:[B

    .line 11
    .line 12
    iget p0, p0, Low0;->c:I

    .line 13
    .line 14
    invoke-static {v3, p0, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    new-array p0, v1, [B

    .line 19
    .line 20
    return-object p0
.end method

.method public e(Lzu6;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Low0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Low0;->b(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Low0;->a:[B

    .line 9
    .line 10
    iget p1, p1, Low0;->c:I

    .line 11
    .line 12
    iget-object v2, p0, Low0;->a:[B

    .line 13
    .line 14
    iget v3, p0, Low0;->d:I

    .line 15
    .line 16
    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Low0;->d:I

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    iput p1, p0, Low0;->d:I

    .line 23
    .line 24
    return-void
.end method

.method public f(B)Low0;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Low0;->b(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Low0;->a:[B

    .line 6
    .line 7
    iget v1, p0, Low0;->d:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Low0;->d:I

    .line 12
    .line 13
    aput-byte p1, v0, v1

    .line 14
    .line 15
    return-object p0
.end method

.method public final g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lvw2;->i(Low0;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, -0x1

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v1, "UTF-16LE"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x3

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v1, "UTF-16BE"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v4, v3

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v1, "UTF-8"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v4, 0x1

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v1, "UTF-16"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v4, v2

    .line 62
    :goto_0
    sget-object v0, Lvw2;->a:[B

    .line 63
    .line 64
    packed-switch v4, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljava/nio/charset/UnsupportedCharsetException;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :pswitch_0
    check-cast p0, Lzu6;

    .line 78
    .line 79
    sget-object p2, Lvw2;->b:Luw2;

    .line 80
    .line 81
    invoke-virtual {p2, p0, p1}, Luw2;->m(Low0;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0, v3}, Low0;->i([BI)Low0;

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_1
    check-cast p0, Lzu6;

    .line 89
    .line 90
    sget-object p2, Lvw2;->c:Ltw2;

    .line 91
    .line 92
    invoke-virtual {p2, p0, p1}, Ltw2;->m(Low0;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v3}, Low0;->i([BI)Low0;

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    array-length p2, p1

    .line 104
    invoke-virtual {p0, p1, p2}, Low0;->i([BI)Low0;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Low0;->f(B)Low0;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_3
    move-object p2, p0

    .line 112
    check-cast p2, Lzu6;

    .line 113
    .line 114
    iget-object p0, p0, Low0;->b:Lvw2;

    .line 115
    .line 116
    invoke-virtual {p0, p2, p1}, Lvw2;->m(Low0;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0, v3}, Low0;->i([BI)Low0;

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i([BI)Low0;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Low0;->b(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Low0;->a:[B

    .line 5
    .line 6
    iget v1, p0, Low0;->d:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Low0;->d:I

    .line 13
    .line 14
    add-int/2addr p1, p2

    .line 15
    iput p1, p0, Low0;->d:I

    .line 16
    .line 17
    return-object p0
.end method

.method public final j(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v1, "UTF-16LE"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v1, "UTF-16BE"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x2

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v1, "UTF-8"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v1, "UTF-16"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v2, 0x0

    .line 60
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    new-instance p0, Ljava/nio/charset/UnsupportedCharsetException;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :pswitch_0
    sget-object p2, Lvw2;->b:Luw2;

    .line 74
    .line 75
    invoke-virtual {p2, p0, p1}, Luw2;->m(Low0;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_1
    sget-object p2, Lvw2;->c:Ltw2;

    .line 80
    .line 81
    invoke-virtual {p2, p0, p1}, Ltw2;->m(Low0;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    array-length p2, p1

    .line 90
    invoke-virtual {p0, p1, p2}, Low0;->i([BI)Low0;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_3
    iget-object p2, p0, Low0;->b:Lvw2;

    .line 95
    .line 96
    invoke-virtual {p2, p0, p1}, Lvw2;->m(Low0;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lvw2;->j(Low0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lvw2;->k(Low0;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lvw2;->l(Low0;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Low0;->a()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-lt v1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Low0;->a:[B

    .line 9
    .line 10
    iget v1, p0, Low0;->c:I

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    iput v2, p0, Low0;->c:I

    .line 15
    .line 16
    aget-byte p0, v0, v1

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p0, Liw0;

    .line 20
    .line 21
    const-string v0, "Underflow"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final o([BI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Low0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Low0;->a:[B

    .line 8
    .line 9
    iget v1, p0, Low0;->c:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Low0;->c:I

    .line 16
    .line 17
    add-int/2addr p1, p2

    .line 18
    iput p1, p0, Low0;->c:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Liw0;

    .line 22
    .line 23
    const-string p1, "Underflow"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final p(I)[B
    .locals 1

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Low0;->o([BI)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final q(Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v1, "UTF-16LE"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v1, "UTF-16BE"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x2

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v1, "UTF-8"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v1, "UTF-16"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v2, 0x0

    .line 60
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    new-instance p0, Ljava/nio/charset/UnsupportedCharsetException;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :pswitch_0
    sget-object p1, Lh51;->c:Ljava/nio/charset/Charset;

    .line 74
    .line 75
    invoke-static {p0, p2, p1}, Lvw2;->h(Low0;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_1
    sget-object p1, Lh51;->b:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-static {p0, p2, p1}, Lvw2;->h(Low0;ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    .line 88
    .line 89
    new-array v1, p2, [B

    .line 90
    .line 91
    invoke-virtual {p0, v1, p2}, Low0;->o([BI)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :pswitch_3
    iget-object p1, p0, Low0;->b:Lvw2;

    .line 99
    .line 100
    invoke-virtual {p1, p0, p2}, Lvw2;->g(Low0;I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lvw2;->d(Low0;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s()I
    .locals 2

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lvw2;->e(Low0;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int p0, v0

    .line 8
    return p0
.end method

.method public final t(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Low0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Low0;->c:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Low0;->c:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Liw0;

    .line 14
    .line 15
    const-string p1, "Underflow"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Buffer [rpos="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Low0;->c:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", wpos="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Low0;->d:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", size="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Low0;->a:[B

    .line 29
    .line 30
    array-length p0, p0

    .line 31
    const-string v1, "]"

    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
