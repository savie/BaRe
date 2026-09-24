.class public final Lbc2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public a:Ljava/io/Serializable;

.field public b:I

.field public final synthetic c:Llh6;

.field public final synthetic d:Lic2;

.field public final synthetic e:Ljh6;


# direct methods
.method public constructor <init>(Llh6;Lic2;Ljh6;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbc2;->c:Llh6;

    .line 2
    .line 3
    iput-object p2, p0, Lbc2;->d:Lic2;

    .line 4
    .line 5
    iput-object p3, p0, Lbc2;->e:Ljh6;

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
    new-instance v0, Lbc2;

    .line 2
    .line 3
    iget-object v1, p0, Lbc2;->d:Lic2;

    .line 4
    .line 5
    iget-object v2, p0, Lbc2;->e:Ljh6;

    .line 6
    .line 7
    iget-object p0, p0, Lbc2;->c:Llh6;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p1}, Lbc2;-><init>(Llh6;Lic2;Ljh6;Ljv1;)V

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
    invoke-virtual {p0, p1}, Lbc2;->create(Ljv1;)Ljv1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbc2;

    .line 8
    .line 9
    sget-object p1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lbc2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lbc2;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lbc2;->e:Ljh6;

    .line 4
    .line 5
    iget-object v2, p0, Lbc2;->c:Llh6;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    iget-object v5, p0, Lbc2;->d:Lic2;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Lyx1;->a:Lyx1;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    if-eq v0, v6, :cond_2

    .line 17
    .line 18
    if-eq v0, v4, :cond_1

    .line 19
    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lbc2;->a:Ljava/io/Serializable;

    .line 23
    .line 24
    move-object v1, p0

    .line 25
    check-cast v1, Ljh6;

    .line 26
    .line 27
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_1
    iget-object v0, p0, Lbc2;->a:Ljava/io/Serializable;

    .line 39
    .line 40
    check-cast v0, Ljh6;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ldy1; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lbc2;->a:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast v0, Llh6;

    .line 49
    .line 50
    :try_start_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catch Ldy1; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_2
    iput-object v2, p0, Lbc2;->a:Ljava/io/Serializable;

    .line 58
    .line 59
    iput v6, p0, Lbc2;->b:I

    .line 60
    .line 61
    invoke-virtual {v5, p0}, Lic2;->i(Lkv1;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v7, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object v0, v2

    .line 69
    :goto_0
    iput-object p1, v0, Llh6;->a:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v5}, Lic2;->g()Lsd4;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object v1, p0, Lbc2;->a:Ljava/io/Serializable;

    .line 76
    .line 77
    iput v4, p0, Lbc2;->b:I

    .line 78
    .line 79
    invoke-interface {p1, p0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v7, :cond_5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move-object v0, v1

    .line 87
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput p1, v0, Ljh6;->a:I
    :try_end_2
    .catch Ldy1; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :catch_0
    iget-object p1, v2, Llh6;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v1, p0, Lbc2;->a:Ljava/io/Serializable;

    .line 99
    .line 100
    iput v3, p0, Lbc2;->b:I

    .line 101
    .line 102
    invoke-virtual {v5, p1, v6, p0}, Lic2;->j(Ljava/lang/Object;ZLkv1;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v7, :cond_6

    .line 107
    .line 108
    :goto_2
    return-object v7

    .line 109
    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    iput p0, v1, Ljh6;->a:I

    .line 116
    .line 117
    :goto_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 118
    .line 119
    return-object p0
.end method
