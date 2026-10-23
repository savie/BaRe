.class Lcom/jcraft/jsch/Session$GlobalRequestReply;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalRequestReply"
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a:Ljava/lang/Thread;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lcom/jcraft/jsch/Session$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>()V

    return-void
.end method
