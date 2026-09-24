.class public final Lrk1;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/zip/DeflaterOutputStream;

.field public final b:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrk1;->a:Ljava/util/zip/DeflaterOutputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lrk1;->b:Ljava/util/zip/Deflater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrk1;->b:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lrk1;->a:Ljava/util/zip/DeflaterOutputStream;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final write(I)V
    .locals 0

    .line 8
    iget-object p0, p0, Lrk1;->a:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lrk1;->a:Ljava/util/zip/DeflaterOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 7
    iget-object p0, p0, Lrk1;->a:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    return-void
.end method
