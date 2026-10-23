.class public final Ltp8;
.super Lpo8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public g:Z

.field public h:Z

.field public i:Ldv;

.field public j:Lsp8;

.field public final k:Lex6;

.field public final l:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpo8;-><init>()V

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
    iput-object v0, p0, Ltp8;->k:Lex6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ltp8;->l:Lix6;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltp8;->i:Ldv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ltp8;->j:Lsp8;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ldv;->p(Lgk6;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, La55;->b()V

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
