.class public final Lle5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lme5;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lme5;Ljava/util/List;ZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lle5;->b:Lme5;

    .line 2
    .line 3
    iput-object p2, p0, Lle5;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lle5;->d:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lle5;

    .line 2
    .line 3
    iget-object v0, p0, Lle5;->c:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v1, p0, Lle5;->d:Z

    .line 6
    .line 7
    iget-object p0, p0, Lle5;->b:Lme5;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lle5;-><init>(Lme5;Ljava/util/List;ZLjv1;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lle5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lle5;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lle5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lle5;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lle5;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lle5;->b:Lme5;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    const p1, 0x7f1301f8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Lqo0;->h(I)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lud5;->a:Lgv7;

    .line 37
    .line 38
    iget-object p1, p0, Lle5;->c:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lud5;->b(Ljava/util/List;Z)Z

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    sub-long/2addr v6, v4

    .line 48
    const-wide/16 v4, 0x1f4

    .line 49
    .line 50
    cmp-long p1, v6, v4

    .line 51
    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sub-long/2addr v4, v6

    .line 58
    :goto_0
    iput v2, p0, Lle5;->a:I

    .line 59
    .line 60
    invoke-static {v4, v5, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-object p1, Lyx1;->a:Lyx1;

    .line 65
    .line 66
    if-ne p0, p1, :cond_3

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lqo0;->f()V

    .line 70
    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    sget-object p0, Lze5;->LOCAL_AND_CLOUD:Lze5;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    sget-object p0, Lze5;->LOCAL:Lze5;

    .line 78
    .line 79
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p1, Laf5;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p0, p1, Laf5;->a:Lze5;

    .line 88
    .line 89
    invoke-static {}, Lny2;->b()Lny2;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, p1}, Lny2;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lbe8;->a:Lbe8;

    .line 97
    .line 98
    return-object p0
.end method
