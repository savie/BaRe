.class public final Ln30;
.super Let;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public g:Z

.field public h:Lk30;

.field public i:Ljava/util/ArrayList;

.field public final j:Lex6;

.field public final k:Lex6;

.field public final l:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Let;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln30;->j:Lex6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ln30;->k:Lex6;

    .line 17
    .line 18
    new-instance v0, Lix6;

    .line 19
    .line 20
    invoke-direct {v0}, Lix6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ln30;->l:Lix6;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final k(Ljava/util/ArrayList;Lty7;)V
    .locals 3

    .line 1
    new-instance v0, Lrw6;

    .line 2
    .line 3
    new-instance v1, Ll30;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1, p2}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const-class p1, Lc40;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Ln30;->h:Lk30;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1, v2}, Ley7;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Lvq;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, v0, Lrw6;->d:Lvq;

    .line 28
    .line 29
    iget-object p0, p0, Ln30;->l:Lix6;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAppTaskComplete(Ld40;)V
    .locals 0
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqo0;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
