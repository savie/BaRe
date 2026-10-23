.class public Lcom/jcraft/jsch/JSchSessionDisconnectException;
.super Lcom/jcraft/jsch/JSchException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLanguageTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReasonCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->a:I

    .line 2
    .line 3
    return p0
.end method
