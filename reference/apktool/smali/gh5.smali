.class public final Lgh5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld67;


# instance fields
.field public a:Ler4;

.field public b:Ler4;

.field public c:Lfh5;

.field public final d:Ldb8;


# direct methods
.method public constructor <init>(Ldb8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgh5;->d:Ldb8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgh5;->d:Ldb8;

    .line 2
    .line 3
    iget-object p0, p0, Ldb8;->a:Ls03;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Luq4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lgh5;->b0()Ler4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Luq4;

    .line 10
    .line 11
    return-object p0
.end method

.method public final b0()Ler4;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh5;->b:Ler4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lgh5;->d:Ldb8;

    .line 6
    .line 7
    iget-object v0, v0, Ldb8;->c:Ler4;

    .line 8
    .line 9
    invoke-virtual {v0}, Ler4;->d()Ler4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lgh5;->b:Ler4;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lgh5;->b:Ler4;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgh5;->d:Ldb8;

    .line 2
    .line 3
    iget-object p0, p0, Ldb8;->a:Ls03;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Ls03;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getAttributes()Ler4;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh5;->a:Ler4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lgh5;->d:Ldb8;

    .line 6
    .line 7
    iget-object v0, v0, Ldb8;->b:Ler4;

    .line 8
    .line 9
    invoke-virtual {v0}, Ler4;->d()Ler4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lgh5;->a:Ler4;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lgh5;->a:Ler4;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lgh5;->d:Ldb8;

    .line 2
    .line 3
    iget-object p0, p0, Ldb8;->p:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getText()Luq4;
    .locals 1

    .line 1
    iget-object p0, p0, Lgh5;->d:Ldb8;

    .line 2
    .line 3
    iget-object v0, p0, Ldb8;->r:Luq4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Ldb8;->q:Luq4;

    .line 9
    .line 10
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lgh5;->d:Ldb8;

    .line 7
    .line 8
    invoke-virtual {p0}, Ldb8;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Ld67;
    .locals 8

    .line 1
    iget-object v0, p0, Lgh5;->c:Lfh5;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lgh5;->d:Ldb8;

    .line 6
    .line 7
    iget-object v0, v0, Ldb8;->d:Lfh5;

    .line 8
    .line 9
    new-instance v1, Lfh5;

    .line 10
    .line 11
    iget-object v2, v0, Lfh5;->a:Lri2;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lfh5;-><init>(Lri2;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lah5;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    new-instance v6, Lah5;

    .line 45
    .line 46
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ldb8;

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Lah5;->c(Ldb8;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    move-object v5, v6

    .line 70
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p0, Lsf5;

    .line 81
    .line 82
    const-string p1, "Path with name \'%s\' is a duplicate in %s "

    .line 83
    .line 84
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p0, p1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_3
    iput-object v1, p0, Lgh5;->c:Lfh5;

    .line 93
    .line 94
    :cond_4
    iget-object p0, p0, Lgh5;->c:Lfh5;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lah5;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    if-eqz p0, :cond_7

    .line 104
    .line 105
    :cond_5
    invoke-virtual {p0}, Lah5;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ldb8;

    .line 117
    .line 118
    invoke-virtual {v0}, Ldb8;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    move-object v0, p1

    .line 126
    :goto_2
    if-eqz v0, :cond_7

    .line 127
    .line 128
    new-instance p0, Lgh5;

    .line 129
    .line 130
    invoke-direct {p0, v0}, Lgh5;-><init>(Ldb8;)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_7
    return-object p1
.end method
