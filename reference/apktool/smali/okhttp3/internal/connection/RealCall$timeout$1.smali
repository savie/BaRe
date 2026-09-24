.class public final Lokhttp3/internal/connection/RealCall$timeout$1;
.super Lc70;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic n:Lokhttp3/internal/connection/RealCall;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/RealCall$timeout$1;->n:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-direct {p0}, Lc70;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall$timeout$1;->n:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
