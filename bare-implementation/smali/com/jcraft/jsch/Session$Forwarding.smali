.class Lcom/jcraft/jsch/Session$Forwarding;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Forwarding"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->b:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->d:I

    .line 13
    .line 14
    return-void
.end method
