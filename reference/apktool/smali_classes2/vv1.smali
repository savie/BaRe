.class public final Lvv1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lwv1;


# direct methods
.method public constructor <init>(Lwv1;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvv1;->a:Lwv1;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lvv1;

    .line 2
    .line 3
    iget-object p0, p0, Lvv1;->a:Lwv1;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lvv1;-><init>(Lwv1;Ljv1;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lvv1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lvv1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lvv1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f13042d

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lvv1;->a:Lwv1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lqv1;->Companion:Lqv1$a;

    .line 13
    .line 14
    iget-object p1, p0, Lwv1;->f:Lgv7;

    .line 15
    .line 16
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    move-object v2, p1

    .line 21
    check-cast v2, Lwg5$c;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lqv1$a;->getList$default(Lqv1$a;ZLwg5$c;Lmt3;ILjava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object p1, p0, Lwv1;->e:Lex6;

    .line 32
    .line 33
    new-instance v6, Lfm7;

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    const/16 v11, 0x1e

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-direct/range {v6 .. v11}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lqo0;->f()V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lbe8;->a:Lbe8;

    .line 50
    .line 51
    return-object p0
.end method
