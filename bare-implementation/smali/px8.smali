.class public final Lpx8;
.super Luv6;

# interfaces
.implements Lwv2;


# instance fields
.field public final c:Lkx8;

.field public final d:I

.field public final e:[B

.field public final f:[B


# direct methods
.method public constructor <init>(Le38;)V
    .locals 6

    .line 1
    iget-object v0, p1, Le38;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkx8;

    .line 4
    .line 5
    iget-object v1, v0, Lkx8;->b:Lrx8;

    .line 6
    .line 7
    iget-object v2, v1, Lrx8;->e:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {p0, v2, v3}, Luv6;-><init>(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lpx8;->c:Lkx8;

    .line 14
    .line 15
    iget v1, v1, Lrx8;->f:I

    .line 16
    .line 17
    iget-object v2, p1, Le38;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, [B

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    array-length p1, v2

    .line 25
    add-int v0, v1, v1

    .line 26
    .line 27
    if-ne p1, v0, :cond_0

    .line 28
    .line 29
    iput v3, p0, Lpx8;->d:I

    .line 30
    .line 31
    invoke-static {v2, v3, v1}, Ljd4;->o([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lpx8;->e:[B

    .line 36
    .line 37
    invoke-static {v2, v1, v1}, Ljd4;->o([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lpx8;->f:[B

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    array-length p1, v2

    .line 45
    add-int/lit8 v0, v1, 0x4

    .line 46
    .line 47
    add-int v5, v0, v1

    .line 48
    .line 49
    if-ne p1, v5, :cond_1

    .line 50
    .line 51
    invoke-static {v2, v3}, Lxx3;->a([BI)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lpx8;->d:I

    .line 56
    .line 57
    const/4 p1, 0x4

    .line 58
    invoke-static {v2, p1, v1}, Ljd4;->o([BII)[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lpx8;->e:[B

    .line 63
    .line 64
    invoke-static {v2, v0, v1}, Ljd4;->o([BII)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lpx8;->f:[B

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    const-string p0, "public key has wrong size"

    .line 72
    .line 73
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v4

    .line 77
    :cond_2
    iget-object v0, v0, Lkx8;->a:Lgg2;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget v0, v0, Lgg2;->a:I

    .line 82
    .line 83
    iput v0, p0, Lpx8;->d:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iput v3, p0, Lpx8;->d:I

    .line 87
    .line 88
    :goto_0
    iget-object v0, p1, Le38;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, [B

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    array-length v2, v0

    .line 95
    if-ne v2, v1, :cond_4

    .line 96
    .line 97
    iput-object v0, p0, Lpx8;->e:[B

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const-string p0, "length of root must be equal to length of digest"

    .line 101
    .line 102
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v4

    .line 106
    :cond_5
    new-array v0, v1, [B

    .line 107
    .line 108
    iput-object v0, p0, Lpx8;->e:[B

    .line 109
    .line 110
    :goto_1
    iget-object p1, p1, Le38;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, [B

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    array-length v0, p1

    .line 117
    if-ne v0, v1, :cond_6

    .line 118
    .line 119
    iput-object p1, p0, Lpx8;->f:[B

    .line 120
    .line 121
    return-void

    .line 122
    :cond_6
    const-string p0, "length of publicSeed must be equal to length of digest"

    .line 123
    .line 124
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v4

    .line 128
    :cond_7
    new-array p1, v1, [B

    .line 129
    .line 130
    iput-object p1, p0, Lpx8;->f:[B

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lpx8;->c:Lkx8;

    .line 2
    .line 3
    iget-object v0, v0, Lkx8;->b:Lrx8;

    .line 4
    .line 5
    iget v0, v0, Lrx8;->f:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lpx8;->d:I

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v3, v0, 0x4

    .line 13
    .line 14
    add-int/2addr v3, v0

    .line 15
    new-array v3, v3, [B

    .line 16
    .line 17
    invoke-static {v3, v2, v1}, Lxx3;->n([BII)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-int v2, v0, v0

    .line 23
    .line 24
    new-array v3, v2, [B

    .line 25
    .line 26
    :goto_0
    iget-object v2, p0, Lpx8;->e:[B

    .line 27
    .line 28
    invoke-static {v1, v3, v2}, Ljd4;->i(I[B[B)V

    .line 29
    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    iget-object p0, p0, Lpx8;->f:[B

    .line 33
    .line 34
    invoke-static {v1, v3, p0}, Ljd4;->i(I[B[B)V

    .line 35
    .line 36
    .line 37
    return-object v3
.end method

.method public final getEncoded()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpx8;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
