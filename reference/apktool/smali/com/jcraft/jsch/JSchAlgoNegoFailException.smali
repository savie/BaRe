.class public Lcom/jcraft/jsch/JSchAlgoNegoFailException;
.super Lcom/jcraft/jsch/JSchException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\" jschProposal=\""

    .line 8
    .line 9
    const-string v2, "\" serverProposal=\""

    .line 10
    .line 11
    const-string v3, "Algorithm negotiation fail: algorithmName=\""

    .line 12
    .line 13
    invoke-static {v3, v0, v1, p2, v2}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "\""

    .line 18
    .line 19
    invoke-static {v0, p3, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->a(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->a:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->b:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->c:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "lang.s2c"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "lang.c2s"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "compression.s2c"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "compression.c2s"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "mac.s2c"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "mac.c2s"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "cipher.s2c"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    const-string p0, "cipher.c2s"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_8
    const-string p0, "server_host_key"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_9
    const-string p0, "kex"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAlgorithmName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getJSchProposal()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerProposal()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
