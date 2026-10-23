.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;
.super Ljava/lang/Exception;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutOfOrderException"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->a:J

    .line 5
    .line 6
    return-void
.end method
