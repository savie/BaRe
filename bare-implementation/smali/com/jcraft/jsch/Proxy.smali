.class public interface abstract Lcom/jcraft/jsch/Proxy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getSocket()Ljava/net/Socket;
.end method
