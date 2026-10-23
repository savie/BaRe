.class public final Lac2;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public synthetic c:Z

.field public final synthetic d:Lic2;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lic2;ILjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lac2;->d:Lic2;

    .line 2
    .line 3
    iput p2, p0, Lac2;->e:I

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
    new-instance v0, Lac2;

    .line 2
    .line 3
    iget-object v1, p0, Lac2;->d:Lic2;

    .line 4
    .line 5
    iget p0, p0, Lac2;->e:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lac2;-><init>(Lic2;ILjv1;)V

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
    iput-boolean p0, v0, Lac2;->c:Z

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
    invoke-virtual {p0, p1, p2}, Lac2;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lac2;

    .line 13
    .line 14
    sget-object p1, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lac2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lac2;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lac2;->d:Lic2;

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
    iget-object p0, p0, Lac2;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    iget-boolean v0, p0, Lac2;->c:Z

    .line 29
    .line 30
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lac2;->c:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lac2;->c:Z

    .line 40
    .line 41
    iput v3, p0, Lac2;->b:I

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Lic2;->i(Lkv1;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v4, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v1}, Lic2;->g()Lsd4;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object p1, p0, Lac2;->a:Ljava/lang/Object;

    .line 57
    .line 58
    iput v2, p0, Lac2;->b:I

    .line 59
    .line 60
    invoke-interface {v0, p0}, Lsd4;->b(Lkv1;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-ne p0, v4, :cond_4

    .line 65
    .line 66
    :goto_1
    return-object v4

    .line 67
    :cond_4
    move-object v5, p1

    .line 68
    move-object p1, p0

    .line 69
    move-object p0, v5

    .line 70
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    iget p0, p0, Lac2;->e:I

    .line 78
    .line 79
    move-object v5, p1

    .line 80
    move p1, p0

    .line 81
    move-object p0, v5

    .line 82
    :goto_3
    new-instance v0, Lga2;

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    const/4 v1, 0x0

    .line 92
    :goto_4
    invoke-direct {v0, p0, v1, p1}, Lga2;-><init>(Ljava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method
