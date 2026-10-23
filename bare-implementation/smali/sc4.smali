.class public final Lsc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lae7;


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsc4;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lsc4;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public final d0(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    :goto_0
    iget-object v1, p0, Lsc4;->a:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0xa

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
