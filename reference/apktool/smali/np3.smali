.class public final Lnp3;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public f:Ljava/util/List;

.field public final g:Lex6;

.field public final h:Lex6;

.field public i:Ldv;

.field public final j:Lmp3;

.field public k:Lpw5;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lto3;->LOCAL:Lto3;

    .line 5
    .line 6
    sget-object v0, Lov2;->a:Lov2;

    .line 7
    .line 8
    iput-object v0, p0, Lnp3;->f:Ljava/util/List;

    .line 9
    .line 10
    new-instance v0, Lex6;

    .line 11
    .line 12
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lhk6;->Loading:Lhk6;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lnp3;->g:Lex6;

    .line 21
    .line 22
    new-instance v0, Lex6;

    .line 23
    .line 24
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lnp3;->h:Lex6;

    .line 28
    .line 29
    new-instance v0, Lmp3;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lmp3;-><init>(Lnp3;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lnp3;->j:Lmp3;

    .line 35
    .line 36
    invoke-static {}, Lzm5;->q()Lpw5;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lnp3;->k:Lpw5;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnp3;->i:Ldv;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lnp3;->j:Lmp3;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ldv;->p(Lgk6;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "repo"

    .line 15
    .line 16
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public final j(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lz10;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Lz10;-><init>(Ljava/lang/Object;ZZI)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
