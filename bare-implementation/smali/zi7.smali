.class public final Lzi7;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzi7;->a:Ljava/net/Socket;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lzi7;->a:Ljava/net/Socket;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
