.class public Lcom/jcraft/jsch/jgss/GSSContextKrb5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/GSSContext;


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Lorg/ietf/jgss/GSSContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sput-object v0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string p1, "host@"

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lorg/ietf/jgss/Oid;

    .line 4
    .line 5
    const-string v1, "1.2.840.113554.1.2.2"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    .line 11
    .line 12
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :catch_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p1, v1}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v2, p1, v0, v1, p2}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-interface {p1, v0}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 53
    .line 54
    invoke-interface {p1, v0}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 58
    .line 59
    invoke-interface {p1, v0}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 68
    .line 69
    invoke-interface {p0, p2}, Lorg/ietf/jgss/GSSContext;->requestAnonymity(Z)V
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_1
    move-exception p0

    .line 74
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public final dispose()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public final getMIC([BII)[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/ietf/jgss/MessageProp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lorg/ietf/jgss/MessageProp;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 9
    .line 10
    invoke-interface {p0, p1, p2, p3, v0}, Lorg/ietf/jgss/GSSContext;->getMIC([BIILorg/ietf/jgss/MessageProp;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final init([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string p2, "true"

    .line 2
    .line 3
    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    .line 4
    .line 5
    sget-object v1, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->b:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v2, "false"
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :try_start_1
    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_3

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :catch_1
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_2
    :cond_0
    :goto_0
    :try_start_2
    iget-object p0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p0, p1, v2, p3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :try_start_3
    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 31
    .line 32
    .line 33
    :catch_3
    :cond_1
    return-object p0

    .line 34
    :goto_1
    :try_start_4
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-direct {p1, p3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :goto_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p1, p3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    :goto_3
    if-nez v1, :cond_2

    .line 55
    .line 56
    :try_start_5
    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 57
    .line 58
    .line 59
    :catch_4
    :cond_2
    throw p0
.end method

.method public final isEstablished()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->a:Lorg/ietf/jgss/GSSContext;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
