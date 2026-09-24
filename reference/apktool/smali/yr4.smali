.class public final Lyr4;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lzr4;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lzr4;Ljava/util/Set;ILjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyr4;->b:Lzr4;

    .line 2
    .line 3
    iput-object p2, p0, Lyr4;->c:Ljava/util/Set;

    .line 4
    .line 5
    iput p3, p0, Lyr4;->d:I

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
    new-instance p1, Lyr4;

    .line 2
    .line 3
    iget-object v0, p0, Lyr4;->c:Ljava/util/Set;

    .line 4
    .line 5
    iget v1, p0, Lyr4;->d:I

    .line 6
    .line 7
    iget-object p0, p0, Lyr4;->b:Lzr4;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lyr4;-><init>(Lzr4;Ljava/util/Set;ILjv1;)V

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
    invoke-virtual {p0, p1, p2}, Lyr4;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lyr4;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyr4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lyr4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Llr4;->a:Llr4;

    .line 23
    .line 24
    sget-boolean v0, Llr4;->b:Z

    .line 25
    .line 26
    iget-object v2, p0, Lyr4;->b:Lzr4;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, v2, Lzr4;->i:Lex6;

    .line 31
    .line 32
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Llr4;->a()V

    .line 38
    .line 39
    .line 40
    :cond_2
    sget-object p1, Lzn4;->a:Lzn4;

    .line 41
    .line 42
    new-instance p1, Lxr4;

    .line 43
    .line 44
    iget-object v0, p0, Lyr4;->c:Ljava/util/Set;

    .line 45
    .line 46
    iget v3, p0, Lyr4;->d:I

    .line 47
    .line 48
    invoke-direct {p1, v2, v0, v3}, Lxr4;-><init>(Lzr4;Ljava/util/Set;I)V

    .line 49
    .line 50
    .line 51
    iput v1, p0, Lyr4;->a:I

    .line 52
    .line 53
    invoke-static {p1, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object p1, Lyx1;->a:Lyx1;

    .line 58
    .line 59
    if-ne p0, p1, :cond_3

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_3
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 63
    .line 64
    return-object p0
.end method
