.class Lcom/jcraft/jsch/JSch$InstanceLogger;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/JSch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLogger"
.end annotation


# instance fields
.field public a:Lcom/jcraft/jsch/Logger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/jcraft/jsch/Logger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/JSch$InstanceLogger;->a:Lcom/jcraft/jsch/Logger;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method
