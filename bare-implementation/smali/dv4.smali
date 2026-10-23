.class public final Ldv4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;
.implements Lbo4;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public final synthetic c:Lev4;


# direct methods
.method public constructor <init>(Lev4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldv4;->c:Lev4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldv4;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Ldv4;->b:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ldv4;->c:Lev4;

    .line 11
    .line 12
    iget-object v0, v0, Lev4;->a:Ljava/io/BufferedReader;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ldv4;->a:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iput-boolean v1, p0, Ldv4;->b:Z

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Ldv4;->a:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldv4;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ldv4;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p0, Ldv4;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Operation is not supported for read-only collection"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
