.class public final Lbo8;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lco8;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLco8;Ljava/util/List;Ljv1;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbo8;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lbo8;->b:Lco8;

    .line 4
    .line 5
    iput-object p3, p0, Lbo8;->c:Ljava/util/List;

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
    new-instance p1, Lbo8;

    .line 2
    .line 3
    iget-object v0, p0, Lbo8;->b:Lco8;

    .line 4
    .line 5
    iget-object v1, p0, Lbo8;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean p0, p0, Lbo8;->a:Z

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lbo8;-><init>(ZLco8;Ljava/util/List;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lbo8;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lbo8;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lbo8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lbo8;->b:Lco8;

    .line 5
    .line 6
    iget-boolean v0, p0, Lbo8;->a:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v1, 0x7f1301f8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lqo0;->h(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v1, Lxj1;->g:Lxj1;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v1, Lc05;->g:Lc05;

    .line 22
    .line 23
    :goto_0
    iget-object p0, p0, Lbo8;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {p0, v0, v1}, Ldo8;->a(Ljava/util/List;ZLdv;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lqo0;->f()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lqo0;->d()V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lbe8;->a:Lbe8;

    .line 35
    .line 36
    return-object p0
.end method
