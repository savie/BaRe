.class Lcom/jcraft/jsch/ConfigRepository$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ConfigRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
.method public final getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/ConfigRepository;->defaultConfig:Lcom/jcraft/jsch/ConfigRepository$Config;

    .line 2
    .line 3
    return-object p0
.end method
