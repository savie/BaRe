.class public abstract Lq64;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/Map;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lq64;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lq64;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Lq64;->b:I

    .line 10
    .line 11
    iput-object p3, p0, Lq64;->c:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lq64;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract b()Lo64;
.end method

.method public abstract c()Z
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget p0, p0, Lq64;->d:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-le p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method
