.class public abstract Lcom/jcraft/jsch/UserAuth;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lcom/jcraft/jsch/UserInfo;

.field public b:Lcom/jcraft/jsch/Packet;

.field public c:Lcom/jcraft/jsch/Buffer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/jcraft/jsch/Session;->T:Lcom/jcraft/jsch/UserInfo;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->a:Lcom/jcraft/jsch/UserInfo;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/jcraft/jsch/Session;->P:Lcom/jcraft/jsch/Packet;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->b:Lcom/jcraft/jsch/Packet;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->c:Lcom/jcraft/jsch/Buffer;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/jcraft/jsch/Session;->i0:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/jcraft/jsch/UserAuth;->d:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method
