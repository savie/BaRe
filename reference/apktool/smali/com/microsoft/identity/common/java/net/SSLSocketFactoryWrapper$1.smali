.class final Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# virtual methods
.method public final handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;->SUPPORTED_SSL_PROTOCOLS:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method
