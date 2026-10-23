.class public final Lokhttp3/internal/UnreadableResponseBody;
.super Lokhttp3/ResponseBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lij7;


# instance fields
.field public final c:Lokhttp3/MediaType;

.field public final d:J


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/UnreadableResponseBody;->c:Lokhttp3/MediaType;

    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/internal/UnreadableResponseBody;->d:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final H(Lnw0;J)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string p1, "Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lf48;
    .locals 0

    .line 1
    sget-object p0, Lf48;->d:Le48;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/UnreadableResponseBody;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final j()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/UnreadableResponseBody;->c:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m()Lzw0;
    .locals 1

    .line 1
    new-instance v0, Ltf6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ltf6;-><init>(Lij7;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
