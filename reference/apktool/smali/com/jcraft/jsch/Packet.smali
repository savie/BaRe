.class Lcom/jcraft/jsch/Packet;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static c:Lcom/jcraft/jsch/Random;


# instance fields
.field public final a:Lcom/jcraft/jsch/Buffer;

.field public final b:[B


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/Packet;->b:[B

    .line 8
    .line 9
    iput-object p1, p0, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    return-void
.end method

.method public static b(Lcom/jcraft/jsch/Random;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/jcraft/jsch/Packet;->c:Lcom/jcraft/jsch/Random;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 5
    .line 6
    return-void
.end method
