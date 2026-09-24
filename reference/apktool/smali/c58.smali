.class public abstract Lc58;
.super Lqb6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/StringBuilder;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lb80;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqb6;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc58;->f:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lc58;->h:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lc58;->i:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lc58;->j:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic f()Lqb6;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc58;->p()Lc58;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final i(C)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lc58;->e:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    iput-object p1, p0, Lc58;->e:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public final j(C)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc58;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lc58;->f:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc58;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lc58;->f:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lc58;->g:Ljava/lang/String;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l([I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc58;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lc58;->f:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    array-length p0, p1

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-ge v0, p0, :cond_1

    .line 19
    .line 20
    aget v2, p1, v0

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    iput-object p1, p0, Lc58;->c:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string p1, ""

    .line 22
    .line 23
    :goto_1
    iput-object p1, p0, Lc58;->d:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc58;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lc58;->c:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "Must be false"

    .line 15
    .line 16
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final o()V
    .locals 11

    .line 1
    iget-object v0, p0, Lc58;->k:Lb80;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb80;

    .line 6
    .line 7
    invoke-direct {v0}, Lb80;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lc58;->k:Lb80;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lc58;->e:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    iget-object v3, p0, Lc58;->f:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    if-eqz v0, :cond_9

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lc58;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_9

    .line 31
    .line 32
    iget-boolean v0, p0, Lc58;->i:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-boolean v0, p0, Lc58;->h:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move-object v0, v2

    .line 58
    :goto_0
    iget-object v4, p0, Lc58;->k:Lb80;

    .line 59
    .line 60
    iget-object v5, p0, Lc58;->e:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Lb80;->c(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const/4 v7, -0x1

    .line 67
    if-eq v6, v7, :cond_4

    .line 68
    .line 69
    iget-object v4, v4, Lb80;->c:[Ljava/lang/String;

    .line 70
    .line 71
    aput-object v0, v4, v6

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    iget v6, v4, Lb80;->a:I

    .line 75
    .line 76
    add-int/lit8 v7, v6, 0x1

    .line 77
    .line 78
    if-lt v7, v6, :cond_8

    .line 79
    .line 80
    iget-object v8, v4, Lb80;->b:[Ljava/lang/String;

    .line 81
    .line 82
    array-length v9, v8

    .line 83
    if-lt v9, v7, :cond_5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    const/4 v10, 0x4

    .line 87
    if-lt v9, v10, :cond_6

    .line 88
    .line 89
    mul-int/lit8 v10, v6, 0x2

    .line 90
    .line 91
    :cond_6
    if-le v7, v10, :cond_7

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    move v7, v10

    .line 95
    :goto_1
    new-array v6, v7, [Ljava/lang/String;

    .line 96
    .line 97
    array-length v9, v8

    .line 98
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    iput-object v6, v4, Lb80;->b:[Ljava/lang/String;

    .line 106
    .line 107
    iget-object v6, v4, Lb80;->c:[Ljava/lang/String;

    .line 108
    .line 109
    new-array v8, v7, [Ljava/lang/String;

    .line 110
    .line 111
    array-length v9, v6

    .line 112
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    iput-object v8, v4, Lb80;->c:[Ljava/lang/String;

    .line 120
    .line 121
    :goto_2
    iget-object v6, v4, Lb80;->b:[Ljava/lang/String;

    .line 122
    .line 123
    iget v7, v4, Lb80;->a:I

    .line 124
    .line 125
    aput-object v5, v6, v7

    .line 126
    .line 127
    iget-object v5, v4, Lb80;->c:[Ljava/lang/String;

    .line 128
    .line 129
    aput-object v0, v5, v7

    .line 130
    .line 131
    add-int/lit8 v7, v7, 0x1

    .line 132
    .line 133
    iput v7, v4, Lb80;->a:I

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    const-string p0, "Must be true"

    .line 137
    .line 138
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_9
    :goto_3
    iput-object v2, p0, Lc58;->e:Ljava/lang/String;

    .line 143
    .line 144
    iput-boolean v1, p0, Lc58;->h:Z

    .line 145
    .line 146
    iput-boolean v1, p0, Lc58;->i:Z

    .line 147
    .line 148
    invoke-static {v3}, Lqb6;->g(Ljava/lang/StringBuilder;)V

    .line 149
    .line 150
    .line 151
    iput-object v2, p0, Lc58;->g:Ljava/lang/String;

    .line 152
    .line 153
    return-void
.end method

.method public p()Lc58;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc58;->c:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lc58;->d:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lc58;->e:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lc58;->f:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-static {v1}, Lqb6;->g(Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lc58;->g:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lc58;->h:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lc58;->i:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lc58;->j:Z

    .line 21
    .line 22
    iput-object v0, p0, Lc58;->k:Lb80;

    .line 23
    .line 24
    return-object p0
.end method
