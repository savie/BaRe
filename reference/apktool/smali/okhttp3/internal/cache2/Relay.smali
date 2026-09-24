.class public final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/concurrent/Lockable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$Companion;,
        Lokhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lhy0;->d:Lhy0;

    .line 2
    .line 3
    const-string v0, "OkHttp cache v1\n"

    .line 4
    .line 5
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 6
    .line 7
    .line 8
    const-string v0, "OkHttp DIRTY :(\n"

    .line 9
    .line 10
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 11
    .line 12
    .line 13
    return-void
.end method
