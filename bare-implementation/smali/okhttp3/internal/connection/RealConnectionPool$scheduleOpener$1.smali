.class public final Lokhttp3/internal/connection/RealConnectionPool$scheduleOpener$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:Lokhttp3/internal/connection/RealConnectionPool$AddressState;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/internal/connection/RealConnectionPool$AddressState;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnectionPool$scheduleOpener$1;->e:Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p3, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 1

    .line 1
    sget v0, Lokhttp3/internal/connection/RealConnectionPool;->h:I

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool$scheduleOpener$1;->e:Lokhttp3/internal/connection/RealConnectionPool$AddressState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    throw p0
.end method
