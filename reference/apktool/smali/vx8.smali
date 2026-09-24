.class public final Lvx8;
.super Luv6;

# interfaces
.implements Lwv2;


# instance fields
.field public final c:Lrx8;

.field public final d:I

.field public final e:[B

.field public final f:[B


# direct methods
.method public constructor <init>(Lxt1;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lxt1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lrx8;

    .line 4
    .line 5
    iget-object v1, v0, Lrx8;->e:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v1, v2}, Luv6;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lvx8;->c:Lrx8;

    .line 12
    .line 13
    iget v1, v0, Lrx8;->f:I

    .line 14
    .line 15
    iget-object v3, p1, Lxt1;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [B

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    array-length p1, v3

    .line 23
    add-int v0, v1, v1

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    iput v2, p0, Lvx8;->d:I

    .line 28
    .line 29
    invoke-static {v3, v2, v1}, Ljd4;->o([BII)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lvx8;->e:[B

    .line 34
    .line 35
    invoke-static {v3, v1, v1}, Ljd4;->o([BII)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lvx8;->f:[B

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    array-length p1, v3

    .line 43
    add-int/lit8 v0, v1, 0x4

    .line 44
    .line 45
    add-int v5, v0, v1

    .line 46
    .line 47
    if-ne p1, v5, :cond_1

    .line 48
    .line 49
    invoke-static {v3, v2}, Lxx3;->a([BI)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lvx8;->d:I

    .line 54
    .line 55
    const/4 p1, 0x4

    .line 56
    invoke-static {v3, p1, v1}, Ljd4;->o([BII)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lvx8;->e:[B

    .line 61
    .line 62
    invoke-static {v3, v0, v1}, Ljd4;->o([BII)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lvx8;->f:[B

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    const-string p0, "public key has wrong size"

    .line 70
    .line 71
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v4

    .line 75
    :cond_2
    iget-object v0, v0, Lrx8;->a:Lhg2;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget v0, v0, Lhg2;->a:I

    .line 80
    .line 81
    iput v0, p0, Lvx8;->d:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iput v2, p0, Lvx8;->d:I

    .line 85
    .line 86
    :goto_0
    iget-object v0, p1, Lxt1;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, [B

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    array-length v2, v0

    .line 93
    if-ne v2, v1, :cond_4

    .line 94
    .line 95
    iput-object v0, p0, Lvx8;->e:[B

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const-string p0, "length of root must be equal to length of digest"

    .line 99
    .line 100
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v4

    .line 104
    :cond_5
    new-array v0, v1, [B

    .line 105
    .line 106
    iput-object v0, p0, Lvx8;->e:[B

    .line 107
    .line 108
    :goto_1
    iget-object p1, p1, Lxt1;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, [B

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    array-length v0, p1

    .line 115
    if-ne v0, v1, :cond_6

    .line 116
    .line 117
    iput-object p1, p0, Lvx8;->f:[B

    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    const-string p0, "length of publicSeed must be equal to length of digest"

    .line 121
    .line 122
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v4

    .line 126
    :cond_7
    new-array p1, v1, [B

    .line 127
    .line 128
    iput-object p1, p0, Lvx8;->f:[B

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lvx8;->c:Lrx8;

    .line 2
    .line 3
    iget v0, v0, Lrx8;->f:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lvx8;->d:I

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    add-int/lit8 v3, v0, 0x4

    .line 11
    .line 12
    add-int/2addr v3, v0

    .line 13
    new-array v3, v3, [B

    .line 14
    .line 15
    invoke-static {v3, v2, v1}, Lxx3;->n([BII)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-int v2, v0, v0

    .line 21
    .line 22
    new-array v3, v2, [B

    .line 23
    .line 24
    :goto_0
    iget-object v2, p0, Lvx8;->e:[B

    .line 25
    .line 26
    invoke-static {v1, v3, v2}, Ljd4;->i(I[B[B)V

    .line 27
    .line 28
    .line 29
    add-int/2addr v1, v0

    .line 30
    iget-object p0, p0, Lvx8;->f:[B

    .line 31
    .line 32
    invoke-static {v1, v3, p0}, Ljd4;->i(I[B[B)V

    .line 33
    .line 34
    .line 35
    return-object v3
.end method
