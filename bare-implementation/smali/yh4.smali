.class public final Lyh4;
.super Lan6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public b:Lwn5;

.field public c:Lh61;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic n:Lci4;


# direct methods
.method public constructor <init>(Ljv1;Lci4;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lyh4;->n:Lci4;

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    invoke-direct {p0, p2, p1}, Lan6;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance v0, Lyh4;

    .line 2
    .line 3
    iget-object p0, p0, Lyh4;->n:Lci4;

    .line 4
    .line 5
    invoke-direct {v0, p2, p0}, Lyh4;-><init>(Ljv1;Lci4;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lyh4;->k:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg77;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lyh4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lyh4;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyh4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lyh4;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg77;

    .line 4
    .line 5
    iget v1, p0, Lyh4;->f:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Lyx1;->a:Lyx1;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lyh4;->e:I

    .line 19
    .line 20
    iget v3, p0, Lyh4;->d:I

    .line 21
    .line 22
    iget-object v4, p0, Lyh4;->c:Lh61;

    .line 23
    .line 24
    iget-object v6, p0, Lyh4;->b:Lwn5;

    .line 25
    .line 26
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lyh4;->n:Lci4;

    .line 44
    .line 45
    invoke-virtual {p1}, Lci4;->z()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    instance-of v1, p1, Lh61;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast p1, Lh61;

    .line 54
    .line 55
    iget-object p1, p1, Lh61;->n:Lk61;

    .line 56
    .line 57
    iput-object v4, p0, Lyh4;->k:Ljava/lang/Object;

    .line 58
    .line 59
    iput v3, p0, Lyh4;->f:I

    .line 60
    .line 61
    invoke-virtual {v0, p1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 62
    .line 63
    .line 64
    return-object v5

    .line 65
    :cond_3
    instance-of v1, p1, Lfb4;

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    check-cast p1, Lfb4;

    .line 70
    .line 71
    invoke-interface {p1}, Lfb4;->b()Lwn5;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Lv05;->i()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    check-cast v1, Lv05;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    move-object v6, p1

    .line 88
    move-object v4, v1

    .line 89
    move v1, v3

    .line 90
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    instance-of p1, v4, Lh61;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    check-cast v4, Lh61;

    .line 101
    .line 102
    iget-object p1, v4, Lh61;->n:Lk61;

    .line 103
    .line 104
    iput-object v0, p0, Lyh4;->k:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v6, p0, Lyh4;->b:Lwn5;

    .line 107
    .line 108
    iput-object v4, p0, Lyh4;->c:Lh61;

    .line 109
    .line 110
    iput v3, p0, Lyh4;->d:I

    .line 111
    .line 112
    iput v1, p0, Lyh4;->e:I

    .line 113
    .line 114
    iput v2, p0, Lyh4;->f:I

    .line 115
    .line 116
    invoke-virtual {v0, p1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 117
    .line 118
    .line 119
    return-object v5

    .line 120
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lv05;->j()Lv05;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    goto :goto_0

    .line 125
    :cond_5
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 126
    .line 127
    return-object p0
.end method
