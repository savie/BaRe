.class public final Lh16;
.super Lj16;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/security/interfaces/ECKey;


# instance fields
.field public final e:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Lvh7;Lvo4;Ljava/security/spec/ECParameterSpec;[C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lj16;-><init>(Lvh7;Lvo4;[C)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lh16;->e:Ljava/security/spec/ECParameterSpec;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lvz0;Ljava/security/spec/ECPoint;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lu06;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p2}, Lu06;-><init>(Lh16;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/security/spec/ECPoint;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcn6;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, [B

    .line 26
    .line 27
    return-object p0
.end method

.method public final getParams()Ljava/security/spec/ECParameterSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lh16;->e:Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    return-object p0
.end method
