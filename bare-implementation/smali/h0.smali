.class public final Lh0;
.super Lr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    sget-object v0, Lm2;->k:Lj2;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lz0;-><init>(Lm2;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lh0;->c:Ljava/math/BigInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;[B)V
    .locals 1

    .line 9
    sget-object v0, Lm2;->k:Lj2;

    invoke-direct {p0, v0, p2}, Lr1;-><init>(Lm2;[B)V

    .line 10
    iput-object p1, p0, Lh0;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lh0;->c:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object p0
.end method
