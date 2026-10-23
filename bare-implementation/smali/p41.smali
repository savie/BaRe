.class public final Lp41;
.super Ll41;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lji3;


# direct methods
.method public constructor <init>(Lji3;Lox1;ILpw0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Ll41;-><init>(Lox1;ILpw0;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp41;->d:Lji3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lr76;Lk41;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ld77;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ld77;-><init>(Lr76;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lp41;->d:Lji3;

    .line 7
    .line 8
    invoke-interface {p0, v0, p2}, Lji3;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    sget-object p2, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    if-ne p0, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p0, p1

    .line 20
    :goto_0
    if-ne p0, p2, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    return-object p1
.end method

.method public final b(Lox1;ILpw0;)Ll41;
    .locals 1

    .line 1
    new-instance v0, Lp41;

    .line 2
    .line 3
    iget-object p0, p0, Lp41;->d:Lji3;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lp41;-><init>(Lji3;Lox1;ILpw0;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ll41;->b:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    sget-object v2, Lyx1;->a:Lyx1;

    .line 5
    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    if-ne v0, v1, :cond_4

    .line 9
    .line 10
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    new-instance v4, Lpc1;

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-direct {v4, v5}, Lpc1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Ll41;->a:Lox1;

    .line 23
    .line 24
    invoke-interface {v5, v1, v4}, Lox1;->fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0, v5}, Lox1;->plus(Lox1;)Lox1;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0, v5, v4}, Lw13;->i(Lox1;Lox1;Z)Lox1;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lp41;->d:Lji3;

    .line 53
    .line 54
    invoke-interface {p0, p1, p2}, Lji3;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-ne p0, v2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object p0, v3

    .line 62
    :goto_1
    if-ne p0, v2, :cond_5

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    sget-object v5, Llv1;->b:Llv1;

    .line 66
    .line 67
    invoke-interface {v1, v5}, Lox1;->get(Lnx1;)Lmx1;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v0, v5}, Lox1;->get(Lnx1;)Lmx1;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v6, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    instance-of v5, p1, Ld77;

    .line 86
    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    new-instance v5, Lud8;

    .line 90
    .line 91
    invoke-direct {v5, p1, v0}, Lud8;-><init>(Lli3;Lox1;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v5

    .line 95
    :cond_3
    new-instance v0, Lo41;

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-direct {v0, p0, v5, v4}, Lo41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lpe4;->E(Lox1;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v1, p1, p0, v0, p2}, Lji8;->O(Lox1;Ljava/lang/Object;Ljava/lang/Object;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-ne p0, v2, :cond_5

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_4
    invoke-super {p0, p1, p2}, Ll41;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-ne p0, v2, :cond_5

    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_5
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp41;->d:Lji3;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Ll41;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
