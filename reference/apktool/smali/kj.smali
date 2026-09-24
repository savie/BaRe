.class public final Lkj;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lji;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lk28;

.field public final synthetic k:Lbt3;

.field public final synthetic n:Z


# direct methods
.method public constructor <init>(Lji;ZZZLk28;Lbt3;ZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkj;->b:Lji;

    .line 2
    .line 3
    iput-boolean p2, p0, Lkj;->c:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lkj;->d:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lkj;->e:Z

    .line 8
    .line 9
    iput-object p5, p0, Lkj;->f:Lk28;

    .line 10
    .line 11
    iput-object p6, p0, Lkj;->k:Lbt3;

    .line 12
    .line 13
    iput-boolean p7, p0, Lkj;->n:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lws7;-><init>(ILjv1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 9

    .line 1
    new-instance v0, Lkj;

    .line 2
    .line 3
    iget-object v6, p0, Lkj;->k:Lbt3;

    .line 4
    .line 5
    iget-boolean v7, p0, Lkj;->n:Z

    .line 6
    .line 7
    iget-object v1, p0, Lkj;->b:Lji;

    .line 8
    .line 9
    iget-boolean v2, p0, Lkj;->c:Z

    .line 10
    .line 11
    iget-boolean v3, p0, Lkj;->d:Z

    .line 12
    .line 13
    iget-boolean v4, p0, Lkj;->e:Z

    .line 14
    .line 15
    iget-object v5, p0, Lkj;->f:Lk28;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lkj;-><init>(Lji;ZZZLk28;Lbt3;ZLjv1;)V

    .line 19
    .line 20
    .line 21
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lkj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkj;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lkj;->a:I

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
    iget-boolean p1, p0, Lkj;->c:Z

    .line 23
    .line 24
    iget-object v0, p0, Lkj;->b:Lji;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lni;->b(Lji;Z)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-boolean p1, p0, Lkj;->d:Z

    .line 31
    .line 32
    iget-boolean v2, p0, Lkj;->e:Z

    .line 33
    .line 34
    invoke-static {v0, p1, v2}, Lni;->a(Lji;ZZ)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    sget-object p1, Lzn4;->a:Lzn4;

    .line 39
    .line 40
    new-instance v2, Ljj;

    .line 41
    .line 42
    iget-object v3, p0, Lkj;->f:Lk28;

    .line 43
    .line 44
    iget-object v4, p0, Lkj;->b:Lji;

    .line 45
    .line 46
    iget-boolean v7, p0, Lkj;->c:Z

    .line 47
    .line 48
    iget-boolean v8, p0, Lkj;->d:Z

    .line 49
    .line 50
    iget-boolean v9, p0, Lkj;->e:Z

    .line 51
    .line 52
    iget-object v10, p0, Lkj;->k:Lbt3;

    .line 53
    .line 54
    iget-boolean v11, p0, Lkj;->n:Z

    .line 55
    .line 56
    invoke-direct/range {v2 .. v11}, Ljj;-><init>(Lk28;Lji;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZLbt3;Z)V

    .line 57
    .line 58
    .line 59
    iput v1, p0, Lkj;->a:I

    .line 60
    .line 61
    invoke-static {v2, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object p1, Lyx1;->a:Lyx1;

    .line 66
    .line 67
    if-ne p0, p1, :cond_2

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 71
    .line 72
    return-object p0
.end method
