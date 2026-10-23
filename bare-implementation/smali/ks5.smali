.class public final Lks5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lokhttp3/Call;

.field public final b:Lhm6;


# direct methods
.method public constructor <init>(Lokhttp3/Call;Lhm6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lks5;->a:Lokhttp3/Call;

    .line 5
    .line 6
    iput-object p2, p0, Lks5;->b:Lhm6;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lks5;->a:Lokhttp3/Call;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/Call;->g()Lokhttp3/Response;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lks5;->b:Lhm6;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Lhm6;->a(Lokhttp3/Response;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lks5;

    .line 2
    .line 3
    iget-object v1, p0, Lks5;->a:Lokhttp3/Call;

    .line 4
    .line 5
    invoke-interface {v1}, Lokhttp3/Call;->clone()Lokhttp3/internal/connection/RealCall;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lks5;->b:Lhm6;

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lks5;-><init>(Lokhttp3/Call;Lhm6;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
