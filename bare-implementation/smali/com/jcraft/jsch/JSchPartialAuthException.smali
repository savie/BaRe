.class Lcom/jcraft/jsch/JSchPartialAuthException;
.super Lcom/jcraft/jsch/JSchException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jcraft/jsch/JSchPartialAuthException;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMethods()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSchPartialAuthException;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
