.class public abstract Lokhttp3/RequestBody;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RequestBody$Companion;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/RequestBody$Companion$toRequestBody$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lhy0;->d:Lhy0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lokhttp3/RequestBody$Companion$toRequestBody$1;-><init>(Lhy0;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract b()Lokhttp3/MediaType;
.end method

.method public c()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;

    .line 2
    .line 3
    return p0
.end method

.method public abstract d(Lyw0;)V
.end method
