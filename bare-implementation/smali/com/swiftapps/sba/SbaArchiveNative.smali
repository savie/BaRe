.class public final Lcom/swiftapps/sba/SbaArchiveNative;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lcom/swiftapps/sba/SbaArchiveNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/swiftapps/sba/SbaArchiveNative;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/swiftapps/sba/SbaArchiveNative;->a:Lcom/swiftapps/sba/SbaArchiveNative;

    .line 7
    .line 8
    const-string v0, "sba_archive"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final native createArchive(ILjava/lang/String;[B[[B[Ljava/lang/String;[I[[Ljava/lang/String;[[Ljava/lang/String;IIIIIIIIII[B[B[B[BLcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J
.end method
