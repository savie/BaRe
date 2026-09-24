.class public final Llg0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lc55;


# static fields
.field public static final b:Ljava/util/HashMap;


# instance fields
.field public final a:Lb55;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llg0;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lig0;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "HMACSHA256"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljg0;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "HMACMD5"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lkg0;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "AESCMAC"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Llg0;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lx23;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lx23;->b()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lb55;

    .line 23
    .line 24
    iput-object p1, p0, Llg0;->a:Lb55;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "No Mac defined for "

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    throw p0
.end method


# virtual methods
.method public final a(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Llg0;->a:Lb55;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lb55;->a(B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()[B
    .locals 2

    .line 1
    iget-object p0, p0, Llg0;->a:Lb55;

    .line 2
    .line 3
    invoke-interface {p0}, Lb55;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p0, v0, v1}, Lb55;->doFinal([BI)I

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final init([B)V
    .locals 2

    .line 1
    new-instance v0, Loo4;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, p1, v1}, Loo4;-><init>([BI)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Llg0;->a:Lb55;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Lb55;->c(Lz61;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final update([B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    .line 3
    iget-object p0, p0, Llg0;->a:Lb55;

    .line 4
    .line 5
    invoke-interface {p0, p1, v0, v1}, Lb55;->update([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final update([BII)V
    .locals 0

    .line 9
    iget-object p0, p0, Llg0;->a:Lb55;

    invoke-interface {p0, p1, p2, p3}, Lb55;->update([BII)V

    return-void
.end method
