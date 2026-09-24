.class public final Lqo3;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static k:Ljava/util/ArrayList;


# instance fields
.field public e:Z

.field public f:Z

.field public final g:Lex6;

.field public final h:Lex6;

.field public final i:Lix6;

.field public final j:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

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
    iput-object v0, p0, Lqo3;->g:Lex6;

    .line 10
    .line 11
    new-instance v0, Lex6;

    .line 12
    .line 13
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lqo3;->h:Lex6;

    .line 17
    .line 18
    new-instance v0, Lix6;

    .line 19
    .line 20
    invoke-direct {v0}, Lix6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lqo3;->i:Lix6;

    .line 24
    .line 25
    new-instance v0, Lix6;

    .line 26
    .line 27
    invoke-direct {v0}, Lix6;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lqo3;->j:Lix6;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lqo3;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    return-void
.end method

.method public final j(Ljava/util/ArrayList;Lty7;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v3, "Empty propsList!"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lqp3;

    .line 21
    .line 22
    new-instance v1, Lpp3;

    .line 23
    .line 24
    invoke-direct {v1}, Lpp3;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1, p2, v1}, Lqp3;-><init>(Ljava/util/List;Lty7;Lpp3;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lqo3;->i:Lix6;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onFoldersTaskComplete(Lup3;)V
    .locals 0
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
