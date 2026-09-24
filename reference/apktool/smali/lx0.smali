.class public final Llx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lra2;


# instance fields
.field public final a:[B

.field public final b:Lkx0;


# direct methods
.method public constructor <init>([BLkx0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llx0;->a:[B

    .line 5
    .line 6
    iput-object p2, p0, Llx0;->b:Lkx0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Llx0;->b:Lkx0;

    .line 2
    .line 3
    invoke-interface {p0}, Lkx0;->a()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Le66;Lqa2;)V
    .locals 0

    .line 1
    iget-object p1, p0, Llx0;->b:Lkx0;

    .line 2
    .line 3
    iget-object p0, p0, Llx0;->a:[B

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lkx0;->j([B)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, p0}, Lqa2;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
