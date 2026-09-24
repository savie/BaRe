.class public final Lmx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# instance fields
.field public final a:Lkx0;


# direct methods
.method public constructor <init>(Lkx0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmx0;->a:Lkx0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    new-instance p2, Lbh5;

    .line 4
    .line 5
    new-instance p3, Lnr5;

    .line 6
    .line 7
    invoke-direct {p3, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p4, Llx0;

    .line 11
    .line 12
    iget-object p0, p0, Lmx0;->a:Lkx0;

    .line 13
    .line 14
    invoke-direct {p4, p1, p0}, Llx0;-><init>([BLkx0;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p3, p4}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method
