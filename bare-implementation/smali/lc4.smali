.class public final Llc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmc4;


# instance fields
.field public final a:Lnc4;

.field public final b:Lgd;

.field public final c:Lmc4;

.field public final d:Lbz2;


# direct methods
.method public constructor <init>(Lmc4;Lgd;Lbz2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnc4;

    .line 5
    .line 6
    invoke-direct {v0, p0, p3}, Lnc4;-><init>(Llc4;Lbz2;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llc4;->a:Lnc4;

    .line 10
    .line 11
    iput-object p2, p0, Llc4;->b:Lgd;

    .line 12
    .line 13
    iput-object p1, p0, Llc4;->c:Lmc4;

    .line 14
    .line 15
    iput-object p3, p0, Llc4;->d:Lbz2;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final d()Lmc4;
    .locals 1

    .line 1
    iget-object v0, p0, Llc4;->b:Lgd;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lgd;->l(Llc4;)Llc4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lmc4;
    .locals 6

    .line 1
    iget-object v0, p0, Llc4;->b:Lgd;

    .line 2
    .line 3
    iget-object v1, v0, Lgd;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcz2;

    .line 6
    .line 7
    iget-object v2, v0, Lgd;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lpc4;

    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v4

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcz2;->peek()Lbz2;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_1
    if-eqz v3, :cond_7

    .line 31
    .line 32
    invoke-interface {v3}, Lbz2;->j()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    iget-object v3, v0, Lgd;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lcz2;

    .line 41
    .line 42
    invoke-interface {v3}, Lcz2;->peek()Lbz2;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3}, Lbz2;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_6

    .line 51
    .line 52
    invoke-interface {v3}, Lbz2;->getValue()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v5, v0, Lgd;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    invoke-interface {v3}, Lbz2;->m0()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2}, Lrk7;->c()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-ne v3, p0, :cond_3

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    invoke-virtual {v2}, Lrk7;->pop()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-interface {v3}, Lbz2;->S()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    invoke-interface {v3}, Lbz2;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    :goto_2
    if-eqz p1, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Lgd;->l(Llc4;)Llc4;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_6
    :goto_3
    invoke-interface {v1}, Lcz2;->next()Lbz2;

    .line 107
    .line 108
    .line 109
    invoke-interface {v1}, Lcz2;->peek()Lbz2;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    goto :goto_1

    .line 114
    :cond_7
    :goto_4
    return-object v4
.end method

.method public final getAttribute(Ljava/lang/String;)Lmc4;
    .locals 0

    .line 1
    iget-object p0, p0, Llc4;->a:Lnc4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmc4;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getAttributes()Lxn5;
    .locals 0

    .line 1
    iget-object p0, p0, Llc4;->a:Lnc4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc4;->d:Lbz2;

    .line 2
    .line 3
    invoke-interface {p0}, Lbz2;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getParent()Lmc4;
    .locals 0

    .line 1
    iget-object p0, p0, Llc4;->c:Lmc4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPosition()Ltr9;
    .locals 3

    .line 1
    new-instance v0, Ltr9;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ltr9;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Llc4;->d:Lbz2;

    .line 10
    .line 11
    iput-object p0, v0, Ltr9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Llc4;->b:Lgd;

    .line 2
    .line 3
    iget-object v1, v0, Lgd;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iget-object v2, v0, Lgd;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcz2;

    .line 10
    .line 11
    iget-object v3, v0, Lgd;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lpc4;

    .line 14
    .line 15
    invoke-virtual {v3, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v5

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-gtz v4, :cond_3

    .line 35
    .line 36
    invoke-interface {v2}, Lcz2;->peek()Lbz2;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4}, Lbz2;->m0()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {v3}, Lrk7;->c()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-ne v4, p0, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v3}, Lrk7;->pop()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Lcz2;->next()Lbz2;

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-interface {v2}, Lcz2;->peek()Lbz2;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    :goto_1
    invoke-virtual {v3}, Lrk7;->c()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-ne v6, p0, :cond_5

    .line 68
    .line 69
    invoke-interface {v4}, Lbz2;->j()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    invoke-interface {v2}, Lcz2;->peek()Lbz2;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v4}, Lbz2;->j()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    invoke-interface {v4}, Lbz2;->getValue()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v6, v0, Lgd;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-interface {v2}, Lcz2;->next()Lbz2;

    .line 97
    .line 98
    .line 99
    invoke-interface {v2}, Lcz2;->peek()Lbz2;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-lez p0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_6
    :goto_2
    return-object v5
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Llc4;->a:Lnc4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Llc4;->b:Lgd;

    .line 11
    .line 12
    iget-object v1, v0, Lgd;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lpc4;

    .line 15
    .line 16
    invoke-virtual {v1}, Lrk7;->c()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v1, p0, :cond_1

    .line 21
    .line 22
    iget-object p0, v0, Lgd;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcz2;

    .line 25
    .line 26
    invoke-interface {p0}, Lcz2;->peek()Lbz2;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lbz2;->m0()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final l()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Llc4;->b:Lgd;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lgd;->l(Llc4;)Llc4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Llc4;->d:Lbz2;

    .line 2
    .line 3
    invoke-interface {p0}, Lbz2;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "element "

    .line 8
    .line 9
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
