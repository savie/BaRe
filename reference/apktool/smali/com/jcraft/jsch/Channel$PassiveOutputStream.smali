.class Lcom/jcraft/jsch/Channel$PassiveOutputStream;
.super Ljava/io/PipedOutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassiveOutputStream"
.end annotation


# instance fields
.field public final a:Lcom/jcraft/jsch/Channel$MyPipedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/PipedInputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->a:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    instance-of p2, p1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->a:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->a:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PipedOutputStream;->write(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->a:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a(I)V

    .line 15
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedOutputStream;->write([BII)V

    return-void
.end method
