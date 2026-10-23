.class public final Lmh9;
.super Lse9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Llh9;


# direct methods
.method public constructor <init>(Ljava/lang/String;Llh9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmh9;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lmh9;->b:Llh9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmh9;->b:Llh9;

    .line 2
    .line 3
    sget-object v0, Llh9;->d:Llh9;

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lmh9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    check-cast p1, Lmh9;

    .line 8
    .line 9
    iget-object v0, p1, Lmh9;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lmh9;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p1, p1, Lmh9;->b:Llh9;

    .line 20
    .line 21
    iget-object p0, p0, Lmh9;->b:Llh9;

    .line 22
    .line 23
    if-eq p1, p0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmh9;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lmh9;->b:Llh9;

    .line 4
    .line 5
    const-class v1, Lmh9;

    .line 6
    .line 7
    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lmh9;->b:Llh9;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", variant: "

    .line 8
    .line 9
    const-string v2, ")"

    .line 10
    .line 11
    const-string v3, "LegacyKmsAead Parameters (keyUri: "

    .line 12
    .line 13
    iget-object p0, p0, Lmh9;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, p0, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
