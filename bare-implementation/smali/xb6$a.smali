.class public final Lxb6$a;
.super Lyb6$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyb6$a<",
        "Lxb6$a;",
        "Lxb6;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyb6$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lokhttp3/MediaType;Lxb6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxb6$a;->V(Lokhttp3/MediaType;Lxb6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic V(Lokhttp3/MediaType;Lxb6;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lxb6;->n(Lxb6;Lokhttp3/MediaType;)Lokhttp3/MediaType;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lxb6$a;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 2
    .line 3
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lxb6$a;->U(Lokhttp3/MediaType;)Lxb6$a;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "invalid content type \'"

    .line 15
    .line 16
    const-string v0, "\' as per RFC 2045"

    .line 17
    .line 18
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public U(Lokhttp3/MediaType;)Lxb6$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Luo1;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p1, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
