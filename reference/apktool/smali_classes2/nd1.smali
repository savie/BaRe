.class public abstract Lnd1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldd1;->GoogleDrive:Ldd1;

    .line 2
    .line 3
    sget-object v1, Ldd1;->OneDrive:Ldd1;

    .line 4
    .line 5
    sget-object v2, Ldd1;->Dropbox:Ldd1;

    .line 6
    .line 7
    sget-object v3, Ldd1;->Box:Ldd1;

    .line 8
    .line 9
    sget-object v4, Ldd1;->YandexDisk:Ldd1;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Ldd1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lnd1;->a:Ljava/util/Set;

    .line 20
    .line 21
    return-void
.end method
