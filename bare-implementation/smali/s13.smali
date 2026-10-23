.class public final synthetic Ls13;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Ldx8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Ldx8;->a:I

    .line 8
    .line 9
    sget-object v0, Ldx8;->f:Ljava/math/BigInteger;

    .line 10
    .line 11
    iput-object v0, p0, Ldx8;->b:Ljava/math/BigInteger;

    .line 12
    .line 13
    iput-object v0, p0, Ldx8;->c:Ljava/math/BigInteger;

    .line 14
    .line 15
    return-object p0
.end method
