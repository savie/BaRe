.class public final Li16;
.super Lj16;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# instance fields
.field public final e:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lvh7;Lvo4;Ljava/math/BigInteger;[C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lj16;-><init>(Lvh7;Lvo4;[C)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Li16;->e:Ljava/math/BigInteger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getModulus()Ljava/math/BigInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Li16;->e:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object p0
.end method
