.class public final Lim7;
.super Ljm1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:Lfm7;

.field public final h:Lfm7;

.field public final i:Z

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Lfm7;Lfm7;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lim7;->g:Lfm7;

    .line 5
    .line 6
    iput-object p2, p0, Lim7;->h:Lfm7;

    .line 7
    .line 8
    iput-boolean p3, p0, Lim7;->i:Z

    .line 9
    .line 10
    iget-object p1, p1, Lfm7;->a:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lim7;->j:Ljava/util/List;

    .line 13
    .line 14
    iget-object p1, p2, Lfm7;->a:Ljava/util/List;

    .line 15
    .line 16
    iput-object p1, p0, Lim7;->k:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(II)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lim7;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lim7;->k:Ljava/util/List;

    .line 5
    .line 6
    iget-object v3, p0, Lim7;->j:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    if-ne p1, p2, :cond_7

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lhm7;->Single:Lhm7;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    sget-object v0, Lhm7;->First:Lhm7;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sub-int/2addr v0, v1

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lhm7;->Last:Lhm7;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object v0, Lhm7;->Middle:Lhm7;

    .line 37
    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-gt v4, v1, :cond_3

    .line 43
    .line 44
    sget-object v4, Lhm7;->Single:Lhm7;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-nez p2, :cond_4

    .line 48
    .line 49
    sget-object v4, Lhm7;->First:Lhm7;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sub-int/2addr v4, v1

    .line 57
    if-ne p2, v4, :cond_5

    .line 58
    .line 59
    sget-object v4, Lhm7;->Last:Lhm7;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    sget-object v4, Lhm7;->Middle:Lhm7;

    .line 63
    .line 64
    :goto_1
    if-eq v0, v4, :cond_6

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_6
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljl0;

    .line 72
    .line 73
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Ljl0;

    .line 78
    .line 79
    iget-object v0, p0, Lim7;->g:Lfm7;

    .line 80
    .line 81
    iget-object v0, v0, Lfm7;->b:Ljava/util/Set;

    .line 82
    .line 83
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object p0, p0, Lim7;->h:Lfm7;

    .line 92
    .line 93
    iget-object p0, p0, Lfm7;->b:Ljava/util/Set;

    .line 94
    .line 95
    invoke-interface {p2}, Ljl0;->getItemId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    if-ne v0, p0, :cond_7

    .line 110
    .line 111
    return v1

    .line 112
    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 113
    return p0
.end method

.method public final c(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lim7;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljl0;

    .line 8
    .line 9
    invoke-interface {p1}, Ljl0;->getItemId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p0, p0, Lim7;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljl0;

    .line 20
    .line 21
    invoke-interface {p0}, Ljl0;->getItemId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final q()I
    .locals 0

    .line 1
    iget-object p0, p0, Lim7;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final r()I
    .locals 0

    .line 1
    iget-object p0, p0, Lim7;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
