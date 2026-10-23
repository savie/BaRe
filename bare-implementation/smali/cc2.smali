.class public final Lcc2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lic2;

.field public final synthetic d:Lox1;

.field public final synthetic e:Lqt3;


# direct methods
.method public constructor <init>(Lic2;Lox1;Lqt3;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc2;->c:Lic2;

    .line 2
    .line 3
    iput-object p2, p0, Lcc2;->d:Lox1;

    .line 4
    .line 5
    iput-object p3, p0, Lcc2;->e:Lqt3;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, Lcc2;

    .line 2
    .line 3
    iget-object v1, p0, Lcc2;->d:Lox1;

    .line 4
    .line 5
    iget-object v2, p0, Lcc2;->e:Lqt3;

    .line 6
    .line 7
    iget-object p0, p0, Lcc2;->c:Lic2;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p1}, Lcc2;-><init>(Lic2;Lox1;Lqt3;Ljv1;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljv1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcc2;->create(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcc2;

    .line 8
    .line 9
    sget-object p1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcc2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcc2;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcc2;->c:Lic2;

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    sget-object v6, Lyx1;->a:Lyx1;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eq v0, v5, :cond_2

    .line 14
    .line 15
    if-eq v0, v4, :cond_1

    .line 16
    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcc2;->a:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    iget-object v0, p0, Lcc2;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lga2;

    .line 34
    .line 35
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput v5, p0, Lcc2;->b:I

    .line 47
    .line 48
    invoke-static {v2, v5, p0}, Lic2;->f(Lic2;ZLkv1;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v6, :cond_4

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :goto_0
    move-object v0, p1

    .line 56
    check-cast v0, Lga2;

    .line 57
    .line 58
    new-instance p1, Lfs1;

    .line 59
    .line 60
    iget-object v7, p0, Lcc2;->e:Lqt3;

    .line 61
    .line 62
    invoke-direct {p1, v7, v0, v1, v5}, Lfs1;-><init>(Lqt3;Ljava/lang/Object;Ljv1;I)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcc2;->a:Ljava/lang/Object;

    .line 66
    .line 67
    iput v4, p0, Lcc2;->b:I

    .line 68
    .line 69
    iget-object v4, p0, Lcc2;->d:Lox1;

    .line 70
    .line 71
    invoke-static {v4, p1, p0}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v6, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    :goto_1
    iget-object v4, v0, Lga2;->b:Ljava/lang/Object;

    .line 79
    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    const/4 v4, 0x0

    .line 88
    :goto_2
    iget v7, v0, Lga2;->c:I

    .line 89
    .line 90
    if-ne v4, v7, :cond_8

    .line 91
    .line 92
    iget-object v0, v0, Lga2;->b:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {v0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_7

    .line 99
    .line 100
    iput-object p1, p0, Lcc2;->a:Ljava/lang/Object;

    .line 101
    .line 102
    iput v3, p0, Lcc2;->b:I

    .line 103
    .line 104
    invoke-virtual {v2, p1, v5, p0}, Lic2;->j(Ljava/lang/Object;ZLkv1;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-ne p0, v6, :cond_7

    .line 109
    .line 110
    :goto_3
    return-object v6

    .line 111
    :cond_7
    return-object p1

    .line 112
    :cond_8
    const-string p0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    .line 113
    .line 114
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v1
.end method
