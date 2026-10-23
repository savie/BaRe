.class public final Lsl8;
.super Lan6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsl8;->d:Landroid/view/View;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lan6;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance v0, Lsl8;

    .line 2
    .line 3
    iget-object p0, p0, Lsl8;->d:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lsl8;-><init>(Landroid/view/View;Ljv1;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lsl8;->c:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lsl8;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lsl8;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lsl8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lsl8;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lsl8;->d:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sget-object v3, Lyx1;->a:Lyx1;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    sget-object v5, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    if-ne v0, v6, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v5

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_1
    iget-object v0, p0, Lsl8;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lg77;

    .line 31
    .line 32
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    instance-of p1, v1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    check-cast v1, Landroid/view/ViewGroup;

    .line 40
    .line 41
    iput-object v4, p0, Lsl8;->c:Ljava/lang/Object;

    .line 42
    .line 43
    iput v6, p0, Lsl8;->b:I

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p1, Lp98;

    .line 49
    .line 50
    new-instance v2, Lol8;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Lol8;-><init>(Landroid/view/ViewGroup;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v2}, Lp98;-><init>(Lol8;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lp98;->b:Ljava/util/Iterator;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    move-object p0, v5

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iput-object p1, v0, Lg77;->c:Ljava/util/Iterator;

    .line 69
    .line 70
    iput v6, v0, Lg77;->a:I

    .line 71
    .line 72
    iput-object p0, v0, Lg77;->d:Ljv1;

    .line 73
    .line 74
    move-object p0, v3

    .line 75
    :goto_0
    if-ne p0, v3, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-object p0, v5

    .line 79
    :goto_1
    if-ne p0, v3, :cond_4

    .line 80
    .line 81
    return-object v3

    .line 82
    :cond_4
    return-object v5

    .line 83
    :cond_5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lsl8;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lg77;

    .line 89
    .line 90
    iput-object p1, p0, Lsl8;->c:Ljava/lang/Object;

    .line 91
    .line 92
    iput v2, p0, Lsl8;->b:I

    .line 93
    .line 94
    invoke-virtual {p1, v1, p0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 95
    .line 96
    .line 97
    return-object v3
.end method
