.class Lcom/jcraft/jsch/SignatureWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Signature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;,
        Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;
    }
.end annotation


# instance fields
.field public final a:Lcom/jcraft/jsch/Signature;

.field public final b:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

.field public final c:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jcraft/jsch/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-class v0, Lcom/jcraft/jsch/Signature;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/jcraft/jsch/Signature;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    instance-of v0, p2, Lcom/jcraft/jsch/SignatureRSA;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance p1, Lcom/jcraft/jsch/n;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->c:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 41
    .line 42
    new-instance p1, Lcom/jcraft/jsch/o;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/o;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->b:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    instance-of v0, p2, Lcom/jcraft/jsch/SignatureDSA;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/jcraft/jsch/n;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->c:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 60
    .line 61
    new-instance p1, Lcom/jcraft/jsch/p;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/p;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->b:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    instance-of v0, p2, Lcom/jcraft/jsch/SignatureECDSA;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    new-instance p1, Lcom/jcraft/jsch/n;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->c:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 79
    .line 80
    new-instance p1, Lcom/jcraft/jsch/q;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/q;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->b:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    instance-of p2, p2, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 89
    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    new-instance p1, Lcom/jcraft/jsch/n;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->c:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 98
    .line 99
    new-instance p1, Lcom/jcraft/jsch/r;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/r;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->b:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 108
    .line 109
    const-string p2, "Unrecognized signature algorithm: "

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    goto :goto_0

    .line 121
    :catch_1
    move-exception p0

    .line 122
    :goto_0
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 123
    .line 124
    const-string v0, "Failed to instantiate signature for algorithm \'"

    .line 125
    .line 126
    const-string v1, "\'"

    .line 127
    .line 128
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p2, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p2
.end method


# virtual methods
.method public final init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sign()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jcraft/jsch/Signature;->sign()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final update([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final verify([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/SignatureWrapper;->a:Lcom/jcraft/jsch/Signature;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
