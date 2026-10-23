.class public abstract Lud1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lsd1;->LARGE_ROUND_TRIP:Lsd1;

    .line 2
    .line 3
    sget-object v1, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 4
    .line 5
    sget-object v2, Lsd1;->MULTITHREADED_DOWNLOAD:Lsd1;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lsd1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lud1;->a:Ljava/util/Set;

    .line 16
    .line 17
    return-void
.end method
