.class public final Lqg0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ljava/util/HashMap;


# instance fields
.field public final a:Lhl2;


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
    sput-object v0, Lqg0;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Ldf0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Ldf0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v2, "SHA-512"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v1, Log0;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "SHA256"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lff0;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v2}, Lff0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v2, "MD4"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lpg0;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "MD5"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lqg0;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lx23;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lx23;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lhl2;

    .line 19
    .line 20
    iput-object p1, p0, Lqg0;->a:Lhl2;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "No MessageDigest "

    .line 24
    .line 25
    const-string v0, " defined in BouncyCastle"

    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method


# virtual methods
.method public final a()[B
    .locals 2

    .line 1
    iget-object p0, p0, Lqg0;->a:Lhl2;

    .line 2
    .line 3
    invoke-interface {p0}, Lhl2;->c()I

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
    invoke-interface {p0, v0, v1}, Lhl2;->doFinal([BI)I

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b([B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    .line 3
    iget-object p0, p0, Lqg0;->a:Lhl2;

    .line 4
    .line 5
    invoke-interface {p0, p1, v0, v1}, Lhl2;->update([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
