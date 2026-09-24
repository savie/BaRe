.class public final Lkd;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lhd;

.field public final f:Z

.field public k:Ljd;


# direct methods
.method public constructor <init>(Las5;Lhd;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lkd;->e:Lhd;

    .line 6
    .line 7
    iput-boolean p3, p0, Lkd;->f:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final H(Ls81;Ls81;)Ls79;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkd;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p1, Ls81;->b:[Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p1, Ls81;->b:[Ljava/lang/annotation/Annotation;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lol1;->f([Ljava/lang/annotation/Annotation;)Lcy0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    iget-object v0, p2, Ls81;->b:[Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p2, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p2, Ls81;->b:[Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0, p1, v0}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcy0;->c()Ls79;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    new-instance p0, Ls79;

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    invoke-direct {p0, p1}, Ls79;-><init>(I)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public final I([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Ls79;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lkd;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    new-array v1, v0, [Ls79;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    sget-object v3, Lvd;->j:Lvd;

    .line 12
    .line 13
    aget-object v4, p1, v2

    .line 14
    .line 15
    invoke-virtual {p0, v3, v4}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    aget-object v4, p2, v2

    .line 22
    .line 23
    invoke-virtual {p0, v3, v4}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :cond_0
    invoke-virtual {v3}, Lcy0;->c()Ls79;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    aput-object v3, v1, v2

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v1

    .line 37
    :cond_2
    sget-object p0, Lol1;->c:[Ls79;

    .line 38
    .line 39
    return-object p0
.end method

.method public final J(Ljava/lang/reflect/Method;Lqc8;Ljava/lang/reflect/Method;)Lpd;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lol1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Las5;

    .line 8
    .line 9
    sget-object v2, Lol1;->c:[Ls79;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    new-instance p0, Lpd;

    .line 14
    .line 15
    new-instance p3, Ls79;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {p3, v1}, Ls79;-><init>(I)V

    .line 19
    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-array v2, v0, [Ls79;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v0, :cond_1

    .line 28
    .line 29
    new-instance v4, Ls79;

    .line 30
    .line 31
    invoke-direct {v4, v1}, Ls79;-><init>(I)V

    .line 32
    .line 33
    .line 34
    aput-object v4, v2, v3

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-direct {p0, p2, p1, p3, v2}, Lpd;-><init>(Lqc8;Ljava/lang/reflect/Method;Ls79;[Ls79;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    if-nez v0, :cond_4

    .line 44
    .line 45
    new-instance v0, Lpd;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v1}, Lol1;->f([Ljava/lang/annotation/Annotation;)Lcy0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p0, v1, p3}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_3
    invoke-virtual {v1}, Lcy0;->c()Ls79;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p2, p1, p0, v2}, Lpd;-><init>(Lqc8;Ljava/lang/reflect/Method;Ls79;[Ls79;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    new-instance v0, Lpd;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0, v1}, Lol1;->f([Ljava/lang/annotation/Annotation;)Lcy0;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0, v1, v2}, Lol1;->e(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_5
    invoke-virtual {v1}, Lcy0;->c()Ls79;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-nez p3, :cond_6

    .line 102
    .line 103
    const/4 p3, 0x0

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    :goto_2
    invoke-virtual {p0, v2, p3}, Lkd;->I([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Ls79;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {v0, p2, p1, v1, p0}, Lpd;-><init>(Lqc8;Ljava/lang/reflect/Method;Ls79;[Ls79;)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public final K(Ls81;Ls81;)Ljd;
    .locals 10

    .line 1
    iget v0, p1, Ls81;->d:I

    .line 2
    .line 3
    iget-object v1, p1, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p1, Ls81;->d:I

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lol1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Las5;

    .line 16
    .line 17
    sget-object v3, Lol1;->c:[Ls79;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    iget-object v6, p0, Lkd;->e:Lhd;

    .line 22
    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    new-instance p0, Ljd;

    .line 26
    .line 27
    new-instance p1, Ls79;

    .line 28
    .line 29
    invoke-direct {p1, v4}, Ls79;-><init>(I)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-array v3, v0, [Ls79;

    .line 36
    .line 37
    :goto_0
    if-ge v5, v0, :cond_2

    .line 38
    .line 39
    new-instance p2, Ls79;

    .line 40
    .line 41
    invoke-direct {p2, v4}, Ls79;-><init>(I)V

    .line 42
    .line 43
    .line 44
    aput-object p2, v3, v5

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    invoke-direct {p0, v6, v1, p1, v3}, Ljd;-><init>(Lqc8;Ljava/lang/reflect/Constructor;Ls79;[Ls79;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    if-nez v0, :cond_4

    .line 54
    .line 55
    new-instance v0, Ljd;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lkd;->H(Ls81;Ls81;)Ls79;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v0, v6, v1, p0, v3}, Ljd;-><init>(Lqc8;Ljava/lang/reflect/Constructor;Ls79;[Ls79;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_4
    iget-object v2, p1, Ls81;->c:[[Ljava/lang/annotation/Annotation;

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, p1, Ls81;->c:[[Ljava/lang/annotation/Annotation;

    .line 74
    .line 75
    :cond_5
    array-length v3, v2

    .line 76
    const/4 v7, 0x0

    .line 77
    if-eq v0, v3, :cond_9

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    sget-object v8, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 84
    .line 85
    const-class v8, Ljava/lang/Enum;

    .line 86
    .line 87
    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_6

    .line 92
    .line 93
    array-length v8, v2

    .line 94
    const/4 v9, 0x2

    .line 95
    add-int/2addr v8, v9

    .line 96
    if-ne v0, v8, :cond_6

    .line 97
    .line 98
    array-length v3, v2

    .line 99
    add-int/2addr v3, v9

    .line 100
    new-array v3, v3, [[Ljava/lang/annotation/Annotation;

    .line 101
    .line 102
    array-length v4, v2

    .line 103
    invoke-static {v2, v5, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v3, v7}, Lkd;->I([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Ls79;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    :goto_2
    move-object v2, v3

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    array-length v3, v2

    .line 119
    add-int/2addr v3, v4

    .line 120
    if-ne v0, v3, :cond_7

    .line 121
    .line 122
    array-length v3, v2

    .line 123
    add-int/2addr v3, v4

    .line 124
    new-array v3, v3, [[Ljava/lang/annotation/Annotation;

    .line 125
    .line 126
    array-length v8, v2

    .line 127
    invoke-static {v2, v5, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    .line 129
    .line 130
    sget-object v2, Lol1;->d:[Ljava/lang/annotation/Annotation;

    .line 131
    .line 132
    aput-object v2, v3, v5

    .line 133
    .line 134
    invoke-virtual {p0, v3, v7}, Lkd;->I([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Ls79;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    goto :goto_2

    .line 139
    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    array-length v0, v2

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string p2, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    .line 166
    .line 167
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_9
    if-nez p2, :cond_a

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_a
    iget-object v0, p2, Ls81;->c:[[Ljava/lang/annotation/Annotation;

    .line 179
    .line 180
    if-nez v0, :cond_b

    .line 181
    .line 182
    iget-object v0, p2, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p2, Ls81;->c:[[Ljava/lang/annotation/Annotation;

    .line 189
    .line 190
    :cond_b
    move-object v7, v0

    .line 191
    :goto_4
    invoke-virtual {p0, v2, v7}, Lkd;->I([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Ls79;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    :goto_5
    new-instance v0, Ljd;

    .line 196
    .line 197
    invoke-virtual {p0, p1, p2}, Lkd;->H(Ls81;Ls81;)Ls79;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-direct {v0, v6, v1, p0, v7}, Ljd;-><init>(Lqc8;Ljava/lang/reflect/Constructor;Ls79;[Ls79;)V

    .line 202
    .line 203
    .line 204
    return-object v0
.end method
