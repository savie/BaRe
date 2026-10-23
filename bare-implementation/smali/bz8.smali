.class public final Lbz8;
.super Ljava/util/zip/InflaterInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Ljava/util/zip/Inflater;

.field public final synthetic b:Lhz8;


# direct methods
.method public constructor <init>(Lhz8;Ljava/io/SequenceInputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbz8;->b:Lhz8;

    .line 2
    .line 3
    iput-object p4, p0, Lbz8;->a:Ljava/util/zip/Inflater;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbz8;->a:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public final fill()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 7
    .line 8
    .line 9
    return-void
.end method
