.class public final Lyb2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:I

.field public synthetic c:Z

.field public final synthetic d:Lic2;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lic2;ILjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb2;->d:Lic2;

    .line 2
    .line 3
    iput p2, p0, Lyb2;->e:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance v0, Lyb2;

    .line 2
    .line 3
    iget-object v1, p0, Lyb2;->d:Lic2;

    .line 4
    .line 5
    iget p0, p0, Lyb2;->e:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lyb2;-><init>(Lic2;ILjv1;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iput-boolean p0, v0, Lyb2;->c:Z

    .line 17
    .line 18
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljv1;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lyb2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lyb2;

    .line 13
    .line 14
    sget-object p1, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lyb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lyb2;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lyb2;->d:Lic2;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lyb2;->c:Z

    .line 16
    .line 17
    iget-object p0, p0, Lyb2;->a:Ljava/lang/Throwable;

    .line 18
    .line 19
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-boolean v0, p0, Lyb2;->c:Z

    .line 31
    .line 32
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lyb2;->c:Z

    .line 42
    .line 43
    :try_start_1
    iput-boolean v0, p0, Lyb2;->c:Z

    .line 44
    .line 45
    iput v3, p0, Lyb2;->b:I

    .line 46
    .line 47
    invoke-static {v1, v0, p0}, Lic2;->f(Lic2;ZLkv1;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v4, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_0
    check-cast p1, Lem7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :goto_1
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v1}, Lic2;->g()Lsd4;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object p1, p0, Lyb2;->a:Ljava/lang/Throwable;

    .line 64
    .line 65
    iput-boolean v0, p0, Lyb2;->c:Z

    .line 66
    .line 67
    iput v2, p0, Lyb2;->b:I

    .line 68
    .line 69
    invoke-interface {v1, p0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-ne p0, v4, :cond_4

    .line 74
    .line 75
    :goto_2
    return-object v4

    .line 76
    :cond_4
    move-object v5, p1

    .line 77
    move-object p1, p0

    .line 78
    move-object p0, v5

    .line 79
    :goto_3
    check-cast p1, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    iget p0, p0, Lyb2;->e:I

    .line 87
    .line 88
    move-object v5, p1

    .line 89
    move p1, p0

    .line 90
    move-object p0, v5

    .line 91
    :goto_4
    new-instance v1, Ljf6;

    .line 92
    .line 93
    invoke-direct {v1, p1, p0}, Ljf6;-><init>(ILjava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    move-object p1, v1

    .line 97
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    new-instance v0, Lpw5;

    .line 102
    .line 103
    invoke-direct {v0, p1, p0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method
