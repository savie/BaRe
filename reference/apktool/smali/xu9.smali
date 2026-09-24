.class public final Lxu9;
.super Lvm4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ltu9;

.field public final e:Lkm8;


# direct methods
.method public constructor <init>(Ltu9;Lkm8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxu9;->d:Ltu9;

    .line 5
    .line 6
    iput-object p2, p0, Lxu9;->e:Lkm8;

    .line 7
    .line 8
    return-void
.end method

.method public static J(Ltu9;Lkm8;)Lxu9;
    .locals 2

    .line 1
    iget v0, p0, Ltu9;->a:I

    .line 2
    .line 3
    iget-object v1, p1, Lkm8;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ld2a;

    .line 6
    .line 7
    iget-object v1, v1, Ld2a;->a:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lxu9;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lxu9;-><init>(Ltu9;Lkm8;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string p0, "Key size mismatch"

    .line 19
    .line 20
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Lxu9;->d:Ltu9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final H()Ljava/lang/Integer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
