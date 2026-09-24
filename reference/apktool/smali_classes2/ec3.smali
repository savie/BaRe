.class public final Lec3;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lsb3;

.field public final g:Lfs7;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public volatile k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

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
    sget-object v1, Lac3;->a:Lac3;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lec3;->e:Lex6;

    .line 15
    .line 16
    new-instance v0, Lsb3;

    .line 17
    .line 18
    invoke-direct {v0}, Lsb3;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lec3;->f:Lsb3;

    .line 22
    .line 23
    invoke-static {}, Lzm5;->a()Lfs7;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lec3;->g:Lfs7;

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    iput-object v0, p0, Lec3;->h:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lec3;->i:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lec3;->j:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lec3;->k:Z

    .line 3
    .line 4
    iget-object v0, p0, Lec3;->g:Lfs7;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 8
    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lec3;->h:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lec3;->i:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lec3;->j:Ljava/lang/String;

    .line 17
    .line 18
    invoke-super {p0}, La55;->b()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
