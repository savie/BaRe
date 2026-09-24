.class public final Lr50;
.super Loa4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v1, p0, Lr50;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v0, p0, Lr50;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lr50;->c:Ljava/util/Comparator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lr50;->a:[Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lr50;->b:[Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lr50;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lr50;->p(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final d(Lm61;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lr50;->p(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lr50;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final e()Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Lr50;->c:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget-object p0, p0, v0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object p0, p0, v0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lr50;->p(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    iget-object p0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    aget-object p0, p0, p1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    return-object v1

    .line 19
    :cond_1
    const-string p0, "Can\'t find predecessor of nonexistent key"

    .line 20
    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lq50;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lq50;-><init>(Lr50;IZ)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final k(Liz1;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lr50;->a:[Ljava/lang/Object;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Lr50;->b:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v2, v2, v0

    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Liz1;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final k0()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    new-instance v2, Lq50;

    .line 7
    .line 8
    invoke-direct {v2, p0, v0, v1}, Lq50;-><init>(Lr50;IZ)V

    .line 9
    .line 10
    .line 11
    return-object v2
.end method

.method public final l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lr50;->p(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lr50;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    iget-object v3, p0, Lr50;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    iget-object v5, p0, Lr50;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    if-eq v0, v4, :cond_1

    .line 14
    .line 15
    aget-object v4, v5, v0

    .line 16
    .line 17
    if-ne v4, p2, :cond_0

    .line 18
    .line 19
    aget-object v4, v3, v0

    .line 20
    .line 21
    if-ne v4, p1, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    array-length p0, v5

    .line 25
    new-array v4, p0, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v5, v1, v4, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    aput-object p2, v4, v0

    .line 31
    .line 32
    array-length p0, v3

    .line 33
    new-array p2, p0, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v3, v1, p2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    aput-object p1, p2, v0

    .line 39
    .line 40
    new-instance p0, Lr50;

    .line 41
    .line 42
    invoke-direct {p0, v2, v4, p2}, Lr50;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    array-length p0, v5

    .line 47
    const/16 v0, 0x19

    .line 48
    .line 49
    if-le p0, v0, :cond_3

    .line 50
    .line 51
    new-instance p0, Ljava/util/HashMap;

    .line 52
    .line 53
    array-length v0, v5

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    array-length v0, v5

    .line 60
    if-ge v1, v0, :cond_2

    .line 61
    .line 62
    aget-object v0, v5, v1

    .line 63
    .line 64
    aget-object v4, v3, v1

    .line 65
    .line 66
    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0, v2}, Lx91;->b(Ljava/util/List;Ljava/util/Map;Ljava/util/Comparator;)Lje6;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_3
    move p0, v1

    .line 90
    :goto_1
    array-length v0, v5

    .line 91
    if-ge p0, v0, :cond_4

    .line 92
    .line 93
    aget-object v0, v5, p0

    .line 94
    .line 95
    invoke-interface {v2, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-gez v0, :cond_4

    .line 100
    .line 101
    add-int/lit8 p0, p0, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    array-length v0, v5

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    new-array v4, v0, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {v5, v1, v4, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    aput-object p2, v4, p0

    .line 113
    .line 114
    add-int/lit8 p2, p0, 0x1

    .line 115
    .line 116
    sub-int/2addr v0, p0

    .line 117
    add-int/lit8 v0, v0, -0x1

    .line 118
    .line 119
    invoke-static {v5, p0, v4, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    array-length v0, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    new-array v5, v0, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v3, v1, v5, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    .line 129
    .line 130
    aput-object p1, v5, p0

    .line 131
    .line 132
    sub-int/2addr v0, p0

    .line 133
    add-int/lit8 v0, v0, -0x1

    .line 134
    .line 135
    invoke-static {v3, p0, v5, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Lr50;

    .line 139
    .line 140
    invoke-direct {p0, v2, v4, v5}, Lr50;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-object p0
.end method

.method public final o(Ljava/lang/Object;)Loa4;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lr50;->p(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v4, p1, 0x1

    .line 21
    .line 22
    sub-int/2addr v1, p1

    .line 23
    invoke-static {v0, v4, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lr50;->b:[Ljava/lang/Object;

    .line 27
    .line 28
    array-length v1, v0

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    new-array v5, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v0, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    sub-int/2addr v1, p1

    .line 37
    invoke-static {v0, v4, v5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lr50;

    .line 41
    .line 42
    iget-object p0, p0, Lr50;->c:Ljava/util/Comparator;

    .line 43
    .line 44
    invoke-direct {p1, p0, v2, v5}, Lr50;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method public final p(Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    iget-object v5, p0, Lr50;->c:Ljava/util/Comparator;

    .line 11
    .line 12
    invoke-interface {v5, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, -0x1

    .line 25
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lr50;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method
