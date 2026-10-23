.class public final Lc62;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lbt3;

.field public b:Z

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc62;->a:Lbt3;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lc62;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/BufferedInputStream;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc62;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lc62;->a:Lbt3;

    .line 6
    .line 7
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/io/InputStream;

    .line 12
    .line 13
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljava/io/BufferedInputStream;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    const/high16 v2, 0x40000

    .line 23
    .line 24
    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 25
    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :goto_0
    iget-object p0, p0, Lc62;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    new-instance p0, Lb62;

    .line 35
    .line 36
    const-string v0, "Can\'t provide InputStream. Provider closed!"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc62;->b:Z

    .line 3
    .line 4
    iget-object p0, p0, Lc62;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
