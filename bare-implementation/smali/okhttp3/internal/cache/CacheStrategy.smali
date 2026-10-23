.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheStrategy$Companion;,
        Lokhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/Request;

.field public final b:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/cache/CacheStrategy;->b:Lokhttp3/Response;

    .line 7
    .line 8
    return-void
.end method
