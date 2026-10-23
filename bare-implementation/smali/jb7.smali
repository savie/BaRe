.class public final Ljb7;
.super Liy1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Llb7;


# direct methods
.method public constructor <init>(Llb7;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb7;->b:Llb7;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lla6;->write(I)V

    .line 17
    iget-object p0, p0, Ljb7;->b:Llb7;

    .line 18
    iget-object p0, p0, Llb7;->d:Ljava/util/zip/CRC32;

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lla6;->write([B)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ljb7;->b:Llb7;

    .line 5
    .line 6
    iget-object p0, p0, Llb7;->d:Ljava/util/zip/CRC32;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 12
    invoke-super {p0, p1, p2, p3}, Lla6;->write([BII)V

    .line 13
    iget-object p0, p0, Ljb7;->b:Llb7;

    .line 14
    iget-object p0, p0, Llb7;->d:Ljava/util/zip/CRC32;

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method
