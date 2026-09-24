.class public final Lmy3;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final M:Lnh;

.field public final N:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lnh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lmy3;->N:Ljava/util/HashMap;

    .line 11
    .line 12
    iput-object p1, p0, Lmy3;->M:Lnh;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final G(Lp60;)V
    .locals 2

    .line 1
    new-instance v0, Lly3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lly3;-><init>(Lmy3;Lp60;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lmy3;->N:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lmy3;->M:Lnh;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lp60;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lyk6;

    .line 24
    .line 25
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v1, La75;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lpk6;->w(Lvk6;)Lpk6;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, p1}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    sget-object v1, Lxh8;->e:Lqz2;

    .line 49
    .line 50
    invoke-virtual {p0, v0, p1, p0, v1}, Lpk6;->A(Lpx7;Ltk6;Lmm0;Ljava/util/concurrent/Executor;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final g(Lp60;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy3;->N:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lpx7;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lmy3;->M:Lnh;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lnh;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lyk6;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lyk6;->i(Lpx7;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
